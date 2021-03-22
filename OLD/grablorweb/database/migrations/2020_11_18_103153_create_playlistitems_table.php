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
            $table->id();
            $table->string('title');
            $table->string('imgurl');
            $table->string('publishedAt');
            $table->string('position');
            $table->string('videoId');
            $table->string('videoLength');
            $table->string('viewCount');
            $table->string('likeCount');
            $table->string('dislikeCount');
            $table->string('commentCount');
            $table->string('user_id');
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
        Schema::dropIfExists('playlistitems');
    }
}
