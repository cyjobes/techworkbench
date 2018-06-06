<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ModifyCustomerTable01 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('customers', function (Blueprint $table) {
            $table->string('name', 45)->nullable()->change();
            $table->string('business_name', 100)->nullable()->change();
            $table->string('phone', 45)->nullable()->change();
            $table->string('address', 100)->nullable()->change();
            $table->string('email', 100)->nullable()->change();
            $table->string('type', 45)->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('customers', function (Blueprint $table) {
            //
        });
    }
}
