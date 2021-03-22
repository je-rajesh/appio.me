<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCreateappTable extends Migration
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
            $table->string('icon');
            $table->string('appname')->nullable();
            $table->string('redirecturl')->nullable();
            $table->string('subdomainurl')->nullable();
            $table->string('supportemail')->nullable();
            $table->string('privacypolicy')->nullable();
            $table->timestamps();
            $table->integer('user_id')->nullable();
            $table->string('version_no')->nullable();
            $table->string('packagename');
            $table->string('buildAppContent')->nullable();
            $table->string('adMobId')->nullable();
            $table->string('adMobBanner')->nullable();
            $table->string('adMobInterstitial')->nullable();
            $table->string('adColonyUUID')->nullable();
            $table->string('adColonyZonesZero')->nullable();
            $table->string('adColonyZonesOne')->nullable();
            $table->string('adColonyZonesTwo')->nullable();
            $table->string('homeInt')->nullable();
            $table->string('homeBanner')->nullable();
            $table->string('listInt')->nullable();
            $table->string('listBanner')->nullable();
            $table->integer('listIntAfterX')->nullable();
            $table->string('oneSignalKey')->nullable();
            $table->string('loadingVideoText')->nullable();
            $table->string('videoErrorText')->nullable();
            $table->string('priColor')->nullable();
            $table->string('accColor')->nullable();
            $table->string('shareText')->nullable();
            $table->boolean('showHomeBanner')->nullable();
            $table->boolean('showHomeInterstitial')->nullable();
            $table->boolean('showListInterstitial')->nullable();
            $table->boolean('showVideoPageTop')->nullable();
            $table->boolean('showVideoPageBottom')->nullable();
            $table->boolean('enableOneSignal')->nullable();
            $table->string('startappid')->nullable();
            $table->boolean('facebook')->nullable();
            $table->boolean('admob')->nullable();
            $table->string('fbappid')->nullable();
            $table->string('fbbannerid')->nullable();
            $table->string('fbinterid')->nullable();
            $table->string('adappid')->nullable();
            $table->string('adbannerid')->nullable();
            $table->string('adinterid')->nullable();
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
