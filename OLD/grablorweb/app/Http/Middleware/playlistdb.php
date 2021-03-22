<?php

namespace App\Http\Middleware;
use App\Models\createapp;
use App\Models\playlist;
use App\Models\playlistitems;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

use Closure;

class playlistdb
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {

        $appid =DB:: table('createapp')->select('id')->where('user_id',auth()->user()->id)->latest('created_at')->first();

        $idapp = json_decode(json_encode($appid), true);
        
         $imid = implode($idapp);
        
          $pid = $request->input('pid');
          if (playlist::where('version',$imid)->where('playlistId', '=', $request->input('pid'))->exists()) {
              return redirect()->back()->with('success','Playlist Already Exists'); 
          }
          else{
          $apikey =DB:: table('createapp')->select('apikey')->where('user_id',auth()->user()->id)->latest('created_at')->first();
          $dec_apikey = json_decode(json_encode($apikey), true);
          $yt_api = implode($dec_apikey);
      
      //playlist code
          $pListUrl = "https://www.googleapis.com/youtube/v3/playlists?part=snippet&id=".$pid."&key=".$yt_api;
          
          }
      
          $ch3 = curl_init();
          curl_setopt($ch3, CURLOPT_URL, $pListUrl);
          curl_setopt($ch3, CURLOPT_RETURNTRANSFER, true);
          $output3 = curl_exec($ch3);
          curl_close($ch3);
      
          $decoded_data_playlist = json_decode($output3, true);
            
          $title = $decoded_data_playlist['items'][0]['snippet']['title'];
          $imgurl = $decoded_data_playlist['items'][0]['snippet']['thumbnails']['high']['url'];
          
         
      
          $playlists = new playlist();
          $playlists->user_id= auth()->user()->id;
          $playlists->title = $title;
          $playlists->imgurl = $imgurl;
          $playlists->playlistId = $pid;
          $playlists->version = $imid;  
          $playlists->save(); 
          
        return $next($request);
    }
}
