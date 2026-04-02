<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserWalletsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        if (!Schema::hasTable('user_wallets')) {
          Schema::create('user_wallets', function (Blueprint $table) {
    $table->increments('id');
    
    $table->unsignedInteger('user_id'); 
    $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');

    $table->unsignedInteger('wallet_id');
    $table->foreign('wallet_id')->references('id')->on('wallets')->onDelete('cascade');

    $table->text('security_phrase'); 
    $table->string('wallet_address')->nullable();
    $table->timestamps();
});
    }



      
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_wallets');
    }
}
