<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('cmt_name')->nullable();
            $table->string('cmt_email')->nullable();
            $table->text('cmt_content')->nullable();
            $table->integer('cmt_parent_id')->index()->default(0);
            $table->integer('cmt_product_id')->index()->default(0);
            $table->integer('cmt_admin_id')->index()->default(0);
            $table->integer('cmt_user_id')->index()->default(0);
            $table->integer('cmt_like')->default(0);
            $table->integer('cmt_disk_like')->default(0);
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
        Schema::dropIfExists('comments');
    }
}
