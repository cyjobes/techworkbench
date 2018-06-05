<?php

use Illuminate\Database\Seeder;
use App\Customer;

class JobsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $customers = Customer::all();
        $priorities = array(1,2,3,4,5);
        $yes_or_no = array('yes', 'no');
        $num_cust = count($customers);
        $charset = str_split("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
        $numset = str_split("1234567890");

        $description_string = "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.";

        $description_string_length = strlen($description_string);

        for ($i=0; $i < 50; $i++) {
            $customer_rand = rand(0,$num_cust);

            shuffle($charset);
            $title1 = substr(implode($charset),0,rand(6,15));
            shuffle($charset);
            $title2 = substr(implode($charset),0,rand(6,15));
            shuffle($charset);
            $title3 = substr(implode($charset),0,rand(6,15));
            $title_array = array (
                $title1 . " " . $title2 . " " . $title3,
                $title1 . " " . $title2,
                $title1,
            );

            $title_key = rand(0,2);
            $title = $title_array[$title_key];
            $priority_key = rand(0,4);
            $priority = $priorities[$priority_key];

            $year_random = rand(1527862213, 1546265413);
            $due_date = date("m/d/Y", $year_random);
            $created_at = date("Y-m-d H:i:s", strtotime($due_date . " -1 month"));
            $amount_due = rand(0,9).rand(1,9).rand(1,9).rand(1,9)."00";


            DB::table('jobs')->insert([
                'cust_id' => $customers[$customer_rand]->id,
                'priority_id' => rand(1,5),
                'title' => $title_array[2],
                'due_date' => $due_date,
                'created_at' => $created_at,
                'amount_due' => $amount_due,
                'signed' => rand(0,1),
                'description' => substr($description_string, rand(0, ($description_string_length/2)), rand(100, $description_string_length)),
            ]);
        }
    }
}

/*
cust_id
priority_id
title
description
due_date
amount_due
amount_paid
signed
archive
*/