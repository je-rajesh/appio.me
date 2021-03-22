<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Createapp extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('createapp', function (Blueprint $table) {

        $table->increments('id');
        $table->string('color')->nullable();
        $table->string('apikey')->nullable();
        $table->string('icon')->nullable();
        $table->string('appname')->nullable();
        $table->string('redirecturl')->nullable();
        $table->string('subdomainurl')->nullable();
        $table->string('supportemail')->nullable();
        $table->string('privacypolicy')->nullable();
        $table->string('facebookid')->nullable();
        $table->string('bannerplacementid')->nullable();
        $table->string('interid')->nullable();
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
        Schema::dropIfExists('createapp');

    }
}
