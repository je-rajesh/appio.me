<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFormusersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('formusers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('appname');
            $table->string('icon_image');
            $table->mediumText('disclaimer');
            $table->string('privatepolicy');
            $table->string('versionname');
            $table->string('versionid');
            $table->string('startappid');
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
        Schema::dropIfExists('formusers');
    }
}
