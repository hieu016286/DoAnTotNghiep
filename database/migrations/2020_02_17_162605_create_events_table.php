<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('e_name')->nullable();
            $table->string('e_banner')->nullable();
            $table->string('e_link')->nullable();
            $table->tinyInteger('e_position_1')->default(0);
            $table->tinyInteger('e_position_2')->default(0);
            $table->tinyInteger('e_position_3')->default(0);
            $table->tinyInteger('e_position_4')->default(0);
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
        Schema::dropIfExists('events');
    }
}
