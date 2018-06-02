<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;

class TasksController extends Controller
{
    public function tasks()
    {
        $data['customers'] = Customer::orderBy("business_name", 'asc')
            ->orderby("name", 'asc')
            ->get();

//dd($data);
        //return view('tasks/task-page');
        return view('tasks/task-page', ['data' => $data]);
    }


    public function forms_process()
    {
        switch(request()->task_form_type) {
            case "customer":
                if (request()->cust_id !== 0) {
                    $this->new_customer();
                } else {
                    $this->edit_customer();
                }
                break;
        }
        return redirect('tasks');
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

    }
}
