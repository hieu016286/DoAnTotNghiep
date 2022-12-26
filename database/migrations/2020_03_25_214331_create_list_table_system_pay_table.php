<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListTableSystemPayTable extends Migration
{
    public function up()
    {
        Schema::create('pay_ins', function (Blueprint $table)
        {
            $table->increments('id');
            $table->unsignedInteger('pi_user_id')->index();
            $table->unsignedInteger('pi_admin_id')->index();
            $table->unsignedInteger('pi_provider')->default(0);
            $table->unsignedInteger('pi_money')->default(0);
            $table->unsignedInteger('pi_fee')->default(0);
            $table->unsignedInteger('pi_amount')->default(0);
            $table->text('pi_meta_detail')->nullable();
            $table->tinyInteger('pi_status')->default(0);
            $table->unsignedTinyInteger('pi_month')->nullable();
            $table->unsignedSmallInteger('pi_year')->nullable();
            $table->timestamps();
        });

        Schema::create('pay_outs', function (Blueprint $table)
        {
            $table->increments('id');
            $table->unsignedInteger('po_user_id')->index();
            $table->unsignedInteger('po_transaction_id')->index();
            $table->unsignedInteger('po_money')->default(0);
            $table->text('po_meta_detail')->nullable(0);
            $table->tinyInteger('po_status')->default(0);
            $table->unsignedTinyInteger('po_month')->nullable();
            $table->unsignedSmallInteger('po_year')->nullable();
            $table->timestamps();
        });


        Schema::create('pay_histories', function (Blueprint $table)
        {
            $table->increments('id');
            $table->string('ph_code')->unique()->index();
            $table->unsignedInteger('ph_user_id')->index();
            $table->unsignedInteger('ph_credit')->default(0);
            $table->unsignedInteger('ph_debit')->default(0);
            $table->unsignedInteger('ph_balance')->default(0);
            $table->text('ph_meta_detail')->nullable();
            $table->tinyInteger('ph_status')->default(0);
            $table->unsignedTinyInteger('ph_month')->nullable();
            $table->unsignedSmallInteger('ph_year')->nullable();
            $table->timestamps();
            $table->index(['ph_code', 'ph_user_id'], 'index_code_user_id');
        });

        Schema::table('users', function (Blueprint $table) {
            $table->integer('balance')->default(0)->index()->after('phone');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pay_ins');
        Schema::dropIfExists('pay_outs');
        Schema::dropIfExists('pay_histories');

        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['balance']);
        });
    }
}
