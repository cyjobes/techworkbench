<?php

use Illuminate\Database\Seeder;

class CcustomerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $charset = str_split("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
        $numset = str_split("1234567890");
        $cities = array("", "Apex", "Cary", "Holy Springs", "Raleigh", "Durham");



        for ($i=0; $i < 50; $i++) {
            $charsustr_start = rand (1,15);
            $charsustr_length = rand (3,10);

            shuffle($charset);
            $name1 = implode($charset);
            $name_shuffle1 = substr($name1, $charsustr_start, $charsustr_length);
            shuffle($charset);
            $name2 = implode($charset);
            $name_shuffle2 = substr($name2, $charsustr_start, $charsustr_length);

            shuffle($charset);
            $bname1 = implode($charset);
            $bname_shuffle1 = substr($bname1, $charsustr_start, $charsustr_length);
            shuffle($charset);
            $bname2 = implode($charset);
            $bname_shuffle2 = substr($bname2, $charsustr_start, $charsustr_length);

            $numsustr_start = rand (1,9);
            $numsustr_length = rand (2,5);
            $charsustr_start = rand (1,15);
            $charsustr_length = rand (3,10);
            $city_rand = rand (1,5);

            shuffle($charset);
            $addy1 = implode($charset);
            $addy_shuffle1 = substr($addy1, $charsustr_start, $charsustr_length);
            shuffle($charset);
            $addy2= implode($charset);
            $addy_shuffle2 = substr($addy2, $charsustr_start, $charsustr_length);

            shuffle($numset);
            $addy3= implode($numset);
            $address = substr($addy3, $numsustr_start, $numsustr_length);
            $address .= " " . $addy_shuffle1;
            $address .= " " . $addy_shuffle2 . ", ";
            $address .= " " . $cities[$city_rand];


            shuffle($numset);
            $phonenum1 = implode($numset);
            $phonestart = substr($phonenum1,0,3);
            shuffle($numset);
            $phonenum2 = implode($numset);
            $phoneend = substr($phonenum2,0,4);
            $phone = "919." . $phonestart . "." . $phoneend;

            DB::table('customers')->insert([
                'name' => $name_shuffle1 . " " . $name_shuffle2,
                'business_name' => $bname_shuffle1 . " " . $bname_shuffle2,
                'phone' => $phone,
                'address' => $address,
                "type" => substr(implode($charset), rand(0,10), rand(5,15)),
                "email" => substr(implode($charset), rand(0,10), rand(5,15)) . "@" . substr(implode($charset), rand(0,10), rand(5,15)) . ".com",
            ]);
        }
    }
}
/*
name
business_name
phone
address
email
type
*/