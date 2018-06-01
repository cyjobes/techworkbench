<?php

use Illuminate\Database\Seeder;

class PrioritiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        DB::table('priorities')->insert([
            'name' => 'Filler Work / Personal',
        ]);

        DB::table('priorities')->insert([
            'name' => 'No Rush',
        ]);

        DB::table('priorities')->insert([
            'name' => 'Normal',
        ]);

        DB::table('priorities')->insert([
            'name' => 'Rush Job',
        ]);

        DB::table('priorities')->insert([
            'name' => 'ASAP',
        ]);
    }
}
