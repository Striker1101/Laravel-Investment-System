<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStatementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('statements', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('user_id');
            $table->string('month');
            $table->string('year');
            $table->decimal('Opening_Balance', 15, 2);
            $table->decimal('Added_Fund', 15, 2);
            $table->decimal('Growth_Added_Fund', 15, 2);
            $table->decimal('Closing_Added_Fund', 15, 2);
            $table->decimal('Percentage_Growth', 5, 2);
            $table->decimal('Closing_Balance', 15, 2);
            $table->decimal('Commission', 5, 2);
            $table->decimal('Gross', 15, 2);
            $table->decimal('Withdrawal', 15, 2);
            $table->decimal('Payout', 15, 2);
            $table->decimal('Net_Balance', 15, 2);
            $table->decimal('Growth_Amount', 15, 2);
            $table->decimal('Commission_Amount', 15, 2);
            $table->decimal('Next_Month_Opening_Balance', 15, 2);
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('statements');
    }
}
