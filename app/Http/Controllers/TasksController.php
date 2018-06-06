<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Customer;
use App\Job;
use App\Priorities;

class TasksController extends Controller
{
    private $priorities;

    public function __construct()
    {
        $this->priorities = Priorities::orderBy("id", 'asc')->get();
    }


    public function tasks()
    {
        session(['sort_by_direction' => 'desc']);
        session(['sort_by' => 'due_date']);
        $data['jobs'] = $this->build_jobs_data();

        $data['customers'] = Customer::orderBy("business_name", 'asc')
            ->orderby("name", 'asc')
            ->get();

        $data['priorities'] = $this->priorities;

        $data['data_type'] = 'active';

//dd($data);
        //return view('tasks/task-page');
        return view('tasks/task-page', ['data' => $data]);
    }


    public function archived()
    {
        session(['sort_by_direction' => 'desc']);
        session(['sort_by' => 'due_date']);
        $data['jobs'] = $this->build_jobs_data(1);

        $data['customers'] = Customer::orderBy("business_name", 'asc')
            ->orderby("name", 'asc')
            ->get();

        $data['priorities'] = $this->priorities;

        $data['data_type'] = 'archived';

//dd($data);
        //return view('tasks/task-page');
        return view('tasks/task-page', ['data' => $data]);
    }


    private function build_jobs_data($archived = 0) {
        $jobs = DB::table('jobs')
            ->join("customers", 'jobs.cust_id', 'customers.id')
            ->orderby(request()->session()->get('sort_by'), request()->session()->get('sort_by_direction'))
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


    public function forms_process()
    {
        switch(request()->task_form_type) {
            case "customer":
                if (request()->delete) {
                    $this->delete_customer();
                } else {
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
        return redirect('/');
    }




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


    public function auto_complete_customer()
    {
        $term = request()->term;
        $results['customers'] = Customer::where("business_name", "like", "%$term%")->get();
        return json_encode($results);
    }



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


    private function delete_customer()
    {
        try {
            DB::beginTransaction();
            $jobs = Job::where("cust_id", "=", request()->delete)->get();

            if (count($jobs) > 0) {
                foreach ($jobs as &$job) {
                    $job->cust_id = 0;
                    $job->update();
                }
            }

            $job = Customer::where("id", "=", request()->delete)->delete();
        } catch (Exception $e) {
            DB::rollBack();
        }
        DB::commit();
    }


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
    }
}