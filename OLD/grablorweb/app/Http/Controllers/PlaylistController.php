<?php

namespace App\Http\Controllers;

use App\Models\createapp;
use App\Models\playlist;
use App\Models\playlistitems;
use App\Models\Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;



class PlaylistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        ini_set('max_execution_time', 600);

        $this->middleware('auth');
    }
    

    public function index()
   {  
         $appid =DB::table('createapp')->select('id')->where('user_id',auth()->user()->id)->latest('created_at')->first();

        $idapp = json_decode(json_encode($appid), true);
    
         $imid = implode($idapp);
       
       $playlist = playlist::all();
       $createapps = createapp::select('appname','packagename','icon','version_no')->where('user_id',auth()->user()->id)->latest()->first();
       $profile = Profile::select('developername')->where('user_id',auth()->user()->id)->latest()->first();
       $playlist2 = playlist::select('version')->where('version',$imid)->first();

       $playlist = playlist::orderBy('created_at','asc')->paginate('100')->where('version',$imid);
         return view('form.playlist',compact('playlist2'))->with('playlist',$playlist)->with('createapps',$createapps)->with('profile',$profile);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

//    public function file_get_content_curls($url) 
//     {
        
//         // Throw Error if the curl function does'nt exist.
//         if (!function_exists('curl_init'))
//         { 
//             die('CURL is not installed!');
//         }
    
//         $ch = curl_init();
//         curl_setopt($ch, CURLOPT_URL, $url);
//         curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//         $output = curl_exec($ch);
//         curl_close($ch);
//         return $output;
//     }


    public function store(Request $request)
    {

   $createapps = new createapp();
   //appid
  $appid =DB:: table('createapp')->select('id')->where('user_id',auth()->user()->id)->latest('created_at')->first();
  $idapp = json_decode(json_encode($appid), true);
   $imid = implode($idapp);

    $pid = $request->input('pid');

    //playlist item code
    $apikey =DB:: table('createapp')->select('apikey')->where('user_id',auth()->user()->id)->latest('created_at')->first();
   $dec_apikey = json_decode(json_encode($apikey), true);
   $yt_api = implode($dec_apikey);
   $np ="";
   for($i=0;$i<40;$i++)
   {
       if($np != ""){
        $url = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=50&playlistId=".$pid."&key=".$yt_api."&pageToken=".$np;

       }
       else{
        $url = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=50&playlistId=".$pid."&key=".$yt_api;

       }   
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $output = curl_exec($ch);
    curl_close($ch);
    
    $decoded_data = json_decode($output, true);
    $final_data = $decoded_data['items'];

     
    
    foreach ($final_data as $key => $value) {
    if($value['snippet']['title'] != 'Private video' && $value['snippet']['title'] != 'Deleted video'){

        $playlistitem = new playlistitems();

    $vid_id = $value['contentDetails']['videoId'];
    $video_data_url = "https://www.googleapis.com/youtube/v3/videos?part=statistics&part=status&part=contentDetails&id=".$vid_id."&key=".$yt_api;

    $ch4 = curl_init();
    curl_setopt($ch4, CURLOPT_URL, $video_data_url);
    curl_setopt($ch4, CURLOPT_RETURNTRANSFER, true);
    $output4 = curl_exec($ch4);
    curl_close($ch4);
    
    $video_data = json_decode($output4, true);
    if($video_data['items'][0]['status']['embeddable'] && $video_data['items'][0]['status']['privacyStatus'] == "public")
    {

    $playlistitem->title = $value['snippet']['title'];
    $playlistitem->imgurl = $value['snippet']['thumbnails']['high']['url'];
    $playlistitem->publishedAt = $value['contentDetails']['videoPublishedAt'];
    $playlistitem->position = $value['snippet']['position'];
    $playlistitem->videoId = $value['contentDetails']['videoId'];
    $playlistitem->playlistId = $value['snippet']['playlistId'];
    $playlistitem->videoLength = $video_data['items']['0']['contentDetails']['duration'];
    if(isset($video_data['items']['0']['statistics']['viewCount'])){
    $playlistitem->viewCount = $video_data['items']['0']['statistics']['viewCount'];
    }
    else{
        print_r("viewcount not working ");
    }
    if(isset($video_data['items']['0']['statistics']['likeCount'])){
        $playlistitem->likeCount = $video_data['items']['0']['statistics']['likeCount'];
    }
    else{
        print_r("likecount not working contact Developer");
    }
    
    if(isset($video_data['items']['0']['statistics']['dislikeCount'])){
        $playlistitem->dislikeCount = $video_data['items']['0']['statistics']['dislikeCount'];
    }
    else{
        print_r("dislikecount not working contact Developer");

    }
    if(isset($video_data['items']['0']['statistics']['commentCount'])){
        $playlistitem->commentCount = $video_data['items']['0']['statistics']['commentCount'];
    }
    else{
        print_r("comment not working contact Developer");

    }
    $playlistitem->user_id= auth()->user()->id;
    $playlistitem->version= $imid;

    $playlistitem->save();
}   
    }
}
    if(isset($decoded_data['nextPageToken'])){
   $np = $decoded_data['nextPageToken'];
    }
    else{
    break;
    }
     }
        



 



$vcount = DB::table('playlistitems')->where('version',$imid)->where('playlistId',$pid)->count('videoId');
$vcount_de = json_decode(json_encode($vcount), true);
DB::table('playlist_db')
            ->where('playlistId',$pid)
            ->where('version', $imid)
            ->update(['videocount' => $vcount_de]);

return redirect()->back()->with('success','Playlist Added Successfully'); 

   
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data =explode("@",$id);
        
       $version = $data[0];
       $playlistid = $data[1];
         

           

           $apikey=DB::table('createapp')->select('apikey')->where('id',$version)->first();
           $apikey_de = json_decode(json_encode($apikey), true);
           $apikey=implode($apikey_de);

        //    $appid =DB:: table('playlist_db')->select('playlistId')->where('user_id',auth()->user()->id)->where('version',$id)->first();
        //    $appid_de = json_decode(json_encode($appid), true);
        //    $imid = implode($appid_de);

          
        DB::table('playlist_db')->where('version', $version)->where('playlistId',$playlistid)->delete();
        DB::table('playlistitems')->where('version', $version)->where('playlistId',$playlistid)->delete();


           $createapps = new createapp();

           $appid =DB:: table('createapp')->select('id')->where('user_id',auth()->user()->id)->latest('created_at')->first();

    
     

   
    $pid = $playlistid;
    if (playlist::where('version',$id)->where('playlistId', $pid)->exists()) {
        return redirect('/playlist')->with('success','Playlist Already exist'); 
    }
    else{
   
    $yt_api = $apikey;

   
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
    $playlists->version = $version;


    $playlists->save();

    //playlist item code
    $np ='';
      for($i=0;$i<40;$i++){
        if($np != ""){
            $url = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=50&playlistId=".$pid."&key=".$yt_api."&pageToken=".$np;
    
           }
           else{
            $url = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=50&playlistId=".$pid."&key=".$yt_api;
    
           }   
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $output = curl_exec($ch);
    curl_close($ch);
    
    $decoded_data = json_decode($output, true);
    $final_data = $decoded_data['items'];
    
    foreach ($final_data as $key => $value) {
    if($value['snippet']['title'] != 'Private video' && $value['snippet']['title'] != 'Deleted video'){

        $playlistitem = new playlistitems();

    $vid_id = $value['contentDetails']['videoId'];
    $video_data_url = "https://www.googleapis.com/youtube/v3/videos?part=statistics&part=status&part=contentDetails&id=".$vid_id."&key=".$yt_api;

    $ch4 = curl_init();
    curl_setopt($ch4, CURLOPT_URL, $video_data_url);
    curl_setopt($ch4, CURLOPT_RETURNTRANSFER, true);
    $output4 = curl_exec($ch4);
    curl_close($ch4);
    
    $video_data = json_decode($output4, true);
    if($video_data['items'][0]['status']['embeddable'] && $video_data['items'][0]['status']['privacyStatus'] == "public")
    {

    $playlistitem->title = $value['snippet']['title'];
    $playlistitem->imgurl = $value['snippet']['thumbnails']['high']['url'];
    $playlistitem->publishedAt = $value['contentDetails']['videoPublishedAt'];
    $playlistitem->position = $value['snippet']['position'];
    $playlistitem->videoId = $value['contentDetails']['videoId'];
    $playlistitem->playlistId = $value['snippet']['playlistId'];
    $playlistitem->videoLength = $video_data['items']['0']['contentDetails']['duration'];
    if(isset($video_data['items']['0']['statistics']['viewCount'])){
    $playlistitem->viewCount = $video_data['items']['0']['statistics']['viewCount'];
    }
    else{
        print_r("viewcount not working");
    }
    if(isset($video_data['items']['0']['statistics']['likeCount'])){
        $playlistitem->likeCount = $video_data['items']['0']['statistics']['likeCount'];
    }
    else{
        print_r("likecount not working");
    }
    
    if(isset($video_data['items']['0']['statistics']['dislikeCount'])){
        $playlistitem->dislikeCount = $video_data['items']['0']['statistics']['dislikeCount'];
    }
    else{
        print_r("dislikecount not working");

    }
    if(isset($video_data['items']['0']['statistics']['commentCount'])){
        $playlistitem->commentCount = $video_data['items']['0']['statistics']['commentCount'];
    }
    else{
        print_r("comment not working");

    }
    $playlistitem->user_id= auth()->user()->id;
    $playlistitem->version= $version;
    

    $playlistitem->save();
}   
    }
}
    if(isset($decoded_data['nextPageToken']))
    {
        $np=$decoded_data['nextPageToken'];
    }
    else{
    break;
    }

}

$vcount = DB::table('playlistitems')->where('version',$version)->where('playlistId',$playlistid)->count('videoId');
$vcount_de = json_decode(json_encode($vcount), true);
DB::table('playlist_db')
    ->where('version', $version)
    ->where('playlistId',$playlistid)
    ->update(['videocount' => $vcount_de]);

return redirect()->back()->with('success','Playlist has been Refreshed');


         
         //  print_r($apikey);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $playlist2 = playlist::select('version')->where('version',$id)->first();
         $playlist = playlist::all();
       $playlist = playlist::orderBy('created_at','asc')->paginate('100')->where('version',$id);
         return view('form.playlistEdit',compact('playlist2'))->with('playlist',$playlist);
    
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //print_r($id);
        $createapps = new createapp();
   
    $pid = $request->input('pid');
    if (playlist::where('playlistId', '=', $request->input('pid'))->where('version',$id)->exists()) {
        return redirect()->back()->with('success','Playlist Already Exists'); 
    }
    else{
    $apikey =DB:: table('createapp')->select('apikey')->where('user_id',auth()->user()->id)->where('id',$id)->latest('created_at')->first();
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
    $playlists->version = $id;


    $playlists->save();

    //playlist item code

    $np ="";
   for($i=0;$i<40;$i++)
   {
       if($np != ""){
        $url = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=50&playlistId=".$pid."&key=".$yt_api."&pageToken=".$np;

       }
       else{
        $url = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=50&playlistId=".$pid."&key=".$yt_api;

       }   
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $output = curl_exec($ch);
    curl_close($ch);
    
    $decoded_data = json_decode($output, true);
    $final_data = $decoded_data['items'];

     
    
    foreach ($final_data as $key => $value) {
    if($value['snippet']['title'] != 'Private video' && $value['snippet']['title'] != 'Deleted video'){

        $playlistitem = new playlistitems();

    $vid_id = $value['contentDetails']['videoId'];
    $video_data_url = "https://www.googleapis.com/youtube/v3/videos?part=statistics&part=status&part=contentDetails&id=".$vid_id."&key=".$yt_api;

    $ch4 = curl_init();
    curl_setopt($ch4, CURLOPT_URL, $video_data_url);
    curl_setopt($ch4, CURLOPT_RETURNTRANSFER, true);
    $output4 = curl_exec($ch4);
    curl_close($ch4);
    
    $video_data = json_decode($output4, true);
    if($video_data['items'][0]['status']['embeddable'] && $video_data['items'][0]['status']['privacyStatus'] == "public")
    {

    $playlistitem->title = $value['snippet']['title'];
    $playlistitem->imgurl = $value['snippet']['thumbnails']['high']['url'];
    $playlistitem->publishedAt = $value['contentDetails']['videoPublishedAt'];
    $playlistitem->position = $value['snippet']['position'];
    $playlistitem->videoId = $value['contentDetails']['videoId'];
    $playlistitem->playlistId = $value['snippet']['playlistId'];
    $playlistitem->videoLength = $video_data['items']['0']['contentDetails']['duration'];
    if(isset($video_data['items']['0']['statistics']['viewCount'])){
    $playlistitem->viewCount = $video_data['items']['0']['statistics']['viewCount'];
    }
    else{
        print_r("viewcount not working ");
    }
    if(isset($video_data['items']['0']['statistics']['likeCount'])){
        $playlistitem->likeCount = $video_data['items']['0']['statistics']['likeCount'];
    }
    else{
        print_r("likecount not working contact Developer");
    }
    
    if(isset($video_data['items']['0']['statistics']['dislikeCount'])){
        $playlistitem->dislikeCount = $video_data['items']['0']['statistics']['dislikeCount'];
    }
    else{
        print_r("dislikecount not working contact Developer");

    }
    if(isset($video_data['items']['0']['statistics']['commentCount'])){
        $playlistitem->commentCount = $video_data['items']['0']['statistics']['commentCount'];
    }
    else{
        print_r("comment not working contact Developer");

    }
    $playlistitem->user_id= auth()->user()->id;
    $playlistitem->version= $id;

    $playlistitem->save();
}   
    }
}
    if(isset($decoded_data['nextPageToken'])){
   $np = $decoded_data['nextPageToken'];
    }
    else{
    break;
    }
     }
    
$vcount = DB::table('playlistitems')->where('version',$id)->where('playlistId',$pid)->count('videoId');
$vcount_de = json_decode(json_encode($vcount), true);
DB::table('playlist_db')
            ->where('playlistId',$pid)
            ->where('version', $id)
            ->update(['videocount' => $vcount_de]);
return redirect()->back()->with('success','Playlist Added & Edited Successfully'); 

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data =explode("@grab",$id);
        
       $version = $data[0];
       $playlistid = $data[1];

      // print_r($version);
      // print_r($playlistid);

       
        $playlists = new playlist();
        if(auth()->user()->id !==$playlists->user_id= auth()->user()->id){
        
       return redirect('/playlist')-> with('danger','Unauthorized Access');
        }
        DB::table('playlist_db')->where('version', $version)->where('playlistId',$playlistid)->delete();
        DB::table('playlistitems')->where('version', $version)->where('playlistId',$playlistid)->delete();

        return redirect()->back()->with('success','playlist deleted successfully');




    }
}
