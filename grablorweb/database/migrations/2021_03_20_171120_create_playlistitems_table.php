<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlaylistitemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('playlistitems', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title');
            $table->string('imgurl')->nullable();
            $table->string('publishedAt')->nullable();
            $table->string('position')->nullable();
            $table->string('videoId')->nullable();
            $table->string('videoLength')->nullable();
            $table->string('viewCount')->nullable();
            $table->string('likeCount')->nullable();
            $table->string('dislikeCount')->nullable();
            $table->string('commentCount')->nullable();
            $table->string('user_id')->nullable();
            $table->timestamps();
            $table->string('playlistId')->nullable();
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
        Schema::dropIfExists('playlistitems');
    }
}
