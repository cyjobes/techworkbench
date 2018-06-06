<?php

use Illuminate\Database\Seeder;

class CustomerUnknown extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('customers')->insert([
            'id' => 99999999,
            'name' => 'Unknown Customer',
            'business_name' => 'Unknown Customer',
        ]);
    }
}
