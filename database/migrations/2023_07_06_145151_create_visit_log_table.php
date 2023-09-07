<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('visit_log', function (Blueprint $table) {
            $table->id();
            $table->integer('ip')->nullable();
            $table->text('browser')->nullable();
            $table->text('os')->nullable(); 
            $table->text('user')->nullable(); 
            $table->text('country')->nullable(); 
            $table->text('region')->nullable(); 
            $table->text('city')->nullable(); 
            $table->text('zip')->nullable(); 
            $table->text('timezone')->nullable(); 
            $table->text('lt,ln')->nullable();
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
        Schema::dropIfExists('visit_log');
    }
};
