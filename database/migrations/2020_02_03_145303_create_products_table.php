<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('pro_name')->nullable();
            $table->string('pro_slug')->index()->unique();
            $table->integer('pro_price')->default(0);
            $table->integer('pro_price_entry')->default(0)->comment('giá nhập');
            $table->integer('pro_category_id')->default(0);
            $table->integer('pro_admin_id')->default(0);
            $table->tinyInteger('pro_sale')->default(0);
            $table->string('pro_avatar')->nullable();
            $table->integer('pro_view')->default(0);
            $table->tinyInteger('pro_hot')->index()->default(0);
            $table->tinyInteger('pro_active')->index()->default(1);
            $table->integer('pro_pay')->default(0);
            $table->integer('pro_number_import')->default(0);
            $table->integer('pro_import_goods')->default(0);
            $table->mediumText('pro_description')->nullable();
            $table->text('pro_content')->nullable();
            $table->integer('pro_review_total')->default(0);
            $table->integer('pro_review_star')->default(0);
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
        Schema::dropIfExists('products');
    }
}
