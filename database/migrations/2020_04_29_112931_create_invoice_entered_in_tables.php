<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoiceEnteredInTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoice_entered', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('ie_suppliere')->default(0)->index();
            $table->string('ie_name_product')->nullable();
            $table->integer('ie_total_money')->default(0);
            $table->integer('ie_number')->default(0);
            $table->integer('ie_number_sold')->default(0);
            $table->integer('ie_product_id')->default(0);
			$table->integer('ie_money')->default(0);
            $table->tinyInteger('ie_status')->default(0);
            $table->integer('ie_the_advance')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('invoice_entered');
    }
}
