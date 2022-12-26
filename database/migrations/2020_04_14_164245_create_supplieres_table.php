<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSupplieresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplieres', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('sl_name')->nullable();
            $table->string('sl_phone')->nullable();
            $table->string('sl_email')->nullable();
            $table->string('sl_address')->nullable();
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
        Schema::dropIfExists('supplieres');
    }
}
