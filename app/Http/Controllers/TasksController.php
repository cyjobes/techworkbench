<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Customer;
use App\Job;
use App\Priorities;

class TasksController extends Controller
{
    private $priorities; // Holds priority data
    public $unknown_customer;

    public function __construct()
    {
        $this->priorities = Priorities::orderBy("id", 'asc')->get();
        $this->unknown_customer = config('app.unknown_customer');
    }


    /**
     * Builds the index page with default table data for active jobs
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function tasks()
    {
        session(['active_page' => '/']);
        $data['jobs'] = $this->build_jobs_data();

        $data['customers'] = Customer::orderBy("business_name", 'asc')
            ->orderby("name", 'asc')
            ->where('id', '!=', $this->unknown_customer)
            ->get();

        $data['priorities'] = $this->priorities;

        $data['data_type'] = 'active';

        return view('tasks/task-page', ['data' => $data]);
    }


    /**
     * Builds the index page with default table data for archived jobs
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function archived()
    {
        session(['active_page' => '/archived']);
        $data['jobs'] = $this->build_jobs_data(1);

        $data['customers'] = Customer::orderBy("business_name", 'asc')
            ->orderby("name", 'asc')
            ->get();

        $data['priorities'] = $this->priorities;

        $data['data_type'] = 'archived';

        return view('tasks/task-page', ['data' => $data]);
    }


    /**
     * Gets collection of data for active or archived jobs, joining the jobs and customer tables
     *
     * @param int $archived - a value other than zero means that the collection is to be archived records
     * Otherwise non-archived records are displayed -> default
     * @return mixed
     */
    private function build_jobs_data($archived = 0) {
        $jobs  = DB::table('jobs')
            ->join("customers", 'jobs.cust_id', 'customers.id')
            ->orderby('due_date', 'asc')
            ->select('jobs.*', 'customers.business_name')
            ->where("jobs.archive", "=", $archived)
            ->get();

        if (count($jobs) > 0) {
            foreach ($jobs as &$job) {
                switch ($job->priority_id) {
                    case 1:
                        $job->priority_string = "*";
                        break;

                    case 2:
                        $job->priority_string = "* *";
                        break;

                    case 3:
                        $job->priority_string = "* * *";
                        break;

                    case 4:
                        $job->priority_string = "* * * *";
                        break;

                    case 5:
                        $job->priority_string = "* * * * *";
                        break;
                }

                if (strlen($job->description) > 45) {
                    $job->description = preg_replace( "/\r|\n/", "", substr($job->description, 0, 45)) . "...";
                }

                $job->created_at = date("m/d/Y" , strtotime($job->created_at));
            }
        }
        return $jobs;
    }


    /**
     * Determines which type of action to take and which form process should be called
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function forms_process()
    {


        switch(request()->task_form_type) {
            case "customer":
                if (request()->delete) {
                    $this->delete_customer($this->unknown_customer);
                } else {

                    $this->validate_customer();

                    if (request()->cust_id == 0) {
                        $this->new_customer();
                    } else {
                        $this->edit_customer();
                    }
                }
                break;

            case "job":
                if (request()->delete) {
                    $this->delete_job();
                } else {
                    if (request()->job_id == 0) {
                        $this->new_job();
                    } else {
                        $this->edit_job();
                    }
                }
                break;
        }
        return redirect(request()->session()->get('active_page'));
    }


    private function validate_customer() {

    }


    /**
     * Creates a new customer record
     */
    private function new_customer()
    {
        //dd(request());
        $customer = new Customer();
        $customer->name = request()->name;
        $customer->business_name = request()->business_name;
        $customer->phone = request()->phone;
        $customer->address = request()->address;
        $customer->email = request()->email;
        $customer->type = request()->type;
        $customer->save();
    }


    /**
     * Updates an existing customer record
     */
    private function edit_customer()
    {
        $customer = Customer::where("id", "=", request()->cust_id)->first();
        $customer->name = request()->name;
        $customer->business_name = request()->business_name;
        $customer->phone = request()->phone;
        $customer->address = request()->address;
        $customer->email = request()->email;
        $customer->type = request()->type;
        $customer->update();
    }


    /**
     * Deletes a customer record and updates related jobs records cust_id to what is sent to it
     */
    private function delete_customer($cust_id)
    {
        try {
            DB::beginTransaction();
            $jobs = Job::where("cust_id", "=", request()->delete)->get();

            if (count($jobs) > 0) {
                foreach ($jobs as &$job) {
                    $job->cust_id = $cust_id;
                    $job->update();
                }
            }

            $job = Customer::where("id", "=", request()->delete)->delete();
        } catch (Exception $e) {
            DB::rollBack();
        }
        DB::commit();
    }


    /** AJAX
     * Gets a customer record for editing
     *
     * @return string
     */
    public function get_customer()
    {
        //dd( request()->id);
        $results['success'] = true;
        try {
            $customer = Customer::where("id", "=", request()->id)->get();

            if (count($customer) > 0) {
                $results['customer'] = $customer;
            } else {
                $results['customer'] = NULL;
            }

        } catch (Exception $e) {
            $results['error'] = $e;
            $results['success'] = false;
            return $results;
        }

        return json_encode($results);
    }


    /** AJAX
     * Gets customer records where the request->term has text that matches a business_name
     *
     * @return string
     */
    public function auto_complete_customer()
    {
        $results['customer_names'] = array();
        $results['customer_ids'] = array();
        $term = request()->term;
        $customers = Customer::where("business_name", "like", "%$term%")
        ->orWhere("name", "like", "%$term%")
            ->get();

        foreach($customers as $c) {
            $results['customer_names'][] = $c->name;
            $results['customer_ids'][] = $c->id;
            $results['customer_names'][] = $c->business_name;
            $results['customer_ids'][] = $c->id;
        }

        return json_encode($results);
    }
    /*
     * return $query->selectRaw("MATCH ({$columns}) AGAINST (? IN BOOLEAN MODE) AS relevance_score", [$searchableTerm])
        ->whereRaw("MATCH ({$columns}) AGAINST (? IN BOOLEAN MODE)", $searchableTerm)
        ->orderByDesc('relevance_score');
    */


    /**
     * Creates a new job record. Will also create a new customer record if the given customer
     * does not already exist in the customer table
     */
    private function new_job()
    {
        try {
            DB::beginTransaction();
            $job = new Job();
            $job->priority_id = request()->priority_id;
            $job->title = request()->title;
            $job->description = request()->description;
            $job->due_date = request()->due_date;
            $job->amount_due = request()->amount_due;
            $job->amount_paid = request()->amount_paid;

            if (isset(request()->archive)) {
                $job->archive = request()->archive;
            }

            if (isset(request()->signed)) {
                $job->signed = request()->signed;
            }

            // A customer id of zero means the customer is new and must be added to the database
            if (request()->cust_id == 0) {
                if ($cust_id = $this->quick_customer_add(request()->customer_text)) {
                    $job->cust_id = $cust_id;
                }
            } else {
                $job->cust_id = request()->cust_id;
            }

            $job->save();

        } catch (Exception $e) {
            DB::rollBack();
        }
        DB::commit();
    }


    /**
     * Part of the new_job() method. Creates a customer record where only the name and business_name fields are populated
     *
     * @param null $customer_name
     * @return mixed|void
     */
    private function quick_customer_add($customer_name = NULL)
    {
        if ($customer_name === NULL) {
            return;
        }
        $customer = new Customer();
        $customer->name = $customer_name;
        $customer->business_name = $customer_name;
        $customer->save();
        return $customer->id;
    }


    /**
     * Updates a job record
     */
    private function edit_job()
    {
        $job = Job::where("id", "=", request()->job_id)->first();
        $job->priority_id = request()->priority_id;
        $job->title = request()->title;
        $job->description = request()->description;
        $job->due_date = request()->due_date;
        $job->amount_due = request()->amount_due;
        $job->amount_paid = request()->amount_paid;

        if (isset(request()->archive)) {
            $job->archive = request()->archive;
        } else {
            $job->archive = 0;
        }

        if (isset(request()->signed)) {
            $job->signed = request()->signed;
        } else {
            $job->signed = 0;
        }

        $job->update();
    }


    /**
     * Deletes a job record
     */
    private function delete_job()
    {
        try {
            DB::beginTransaction();
            $job = Job::where("id", "=", request()->delete)->delete();
        } catch (Exception $e) {
            DB::rollBack();
        }
        DB::commit();
    }


    /** AJAX
     * Gets a job record for display and editing
     *
     * @return string
     */
    public function get_job() {
        $results['success'] = true;
        try {
            $jobs = DB::table('jobs')
                ->join("customers", 'jobs.cust_id', 'customers.id')
                ->orderby("due_date", "desc")
                ->where("jobs.id", "=", request()->id)
                ->select('jobs.*', 'customers.business_name')
                ->first();
            $jobs->created_at = date("m/d/Y", strtotime($jobs->created_at));
            $results['data'] = $jobs;
        } catch (Exception $e) {
            $results['success'] = false;
            $results['error'] = $e;
        }

        return json_encode($results);
    }

/*
    public function sort_jobs_list()
    {
        try {
            $results['success'] = true;
            $this->set_sort_sessions();

            $data['jobs'] = $this->build_jobs_data();
            $results['data'] = view('tasks.jobs-table-data', ["data" => $data])->render();
        } catch (Exception $e) {
            $results['success'] = false;
            $results['error'] = $e;
        }

        return json_encode($results);
    }


    private function set_sort_sessions()
    {
        // If the same item last sorted is selected, swap the sorting option
        if (request()->session()->get('sort_by') == request()->sort_by) {
            switch (request()->session()->get('sort_by_direction')) {
                case 'asc':
                    session(['sort_by_direction' => 'desc']);
                    break;

                case 'desc':
                    session(['sort_by_direction' => 'asc']);
                    break;
            }
        } else {
            session(['sort_by' => request()->sort_by]);
            session(['sort_by_direction' => 'desc']);
        }
    }*/
}