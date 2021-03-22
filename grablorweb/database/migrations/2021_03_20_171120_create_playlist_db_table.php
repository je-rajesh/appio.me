<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlaylistDbTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('playlist_db', function (Blueprint $table) {
            $table->increments('id');
            $table->string('playlistId');
            $table->string('title');
            $table->string('imgurl');
            $table->string('videoCount')->nullable();
            $table->timestamps();
            $table->integer('user_id');
            $table->string('version')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('playlist_db');
    }
}
