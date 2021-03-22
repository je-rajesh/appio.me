<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Profile;
use App\Models\createapp;
use App\Models\playlist;
use App\Models\playlistitems;


class GetController extends Controller
{
    public function config($id,$app){

        
        //$data = explode('-',$id);
        $createapp = createapp::select('*')->where('user_id',$id)->where('appname',$app)->get();
        echo "<pre>"; 
         return $createapp->toJson(JSON_PRETTY_PRINT);
          //return redirect('http://appio.me');


        
        // $playlist = playlist::select('*')->where('version',$id_c)->get();
        // $profile = Profile::select('*')->where('user_id',$data[0])->get();
        // $video = playlistitems::where('user_id',$data[0])->where('version',$id_c)->get();
        // return [['AppDetails',$createapp],['PlaylistDetails',$playlist],['UserProfileDetails',$profile],['VideoDetails',$video]];
    }

    public function playlist($id,$app){
        $appid = createapp::select('id')->where('user_id',$id)->where('appname',$app)->get();
        $appid_j = json_decode($appid[0]);
        $appid_de=$appid_j->id;

        $playlist = playlist::select('*')->where('version',$appid_de)->get();
        echo "<pre>"; 
        return $playlist->toJson(JSON_PRETTY_PRINT);
        


    }
    public function video($id,$app,$pid){
        $appid = createapp::select('id')->where('user_id',$id)->where('appname',$app)->get();
        $appid_j = json_decode($appid[0]);
        $appid_de=$appid_j->id;

        $video = playlistitems::where('version',$appid_de)->where('playlistId',$pid)->get();
        echo "<pre>"; 
        return $video->toJson(JSON_PRETTY_PRINT);


    }
}
