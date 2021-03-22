<?php

namespace App\Http\Controllers;

use App\Models\playlist;
use App\Models\playlistitems;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
class PlaylistitemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $playlistitems = playlistitems::all();
        $playlistitems = playlistitems::orderBy('created_at','asc')->paginate('100');

        return view('form.playlistitem')->with('playlistitems',$playlistitems);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
      


         $data=DB::table('playlistitems')
        ->select('user_id','id','title','imgurl','videoId','version','position')
        ->where('version',$version)
        ->where('playlistId',$playlistid)
        ->get();
        return view('form.showplaylist',compact('data'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data =explode("@",$id);
        
       $version = $data[0];
       $videoid = $data[1];

       //print_r($version);
      // print_r($playlistid);


       $playlistitems = new playlistitems();
        if(auth()->user()->id !==$playlistitems->user_id= auth()->user()->id){
        
       return redirect('/playlistitem')-> with('danger','Unauthorized Access');
        }
        DB::table('playlistitems')->where('version', $version)->where('videoid',$videoid)->delete();
        
        $version = DB::table('playlist_db')->select('version')->get();
        $version2 = json_decode(json_encode($version), true);
        $playlistid_de = DB::table('playlist_db')->select('playlistId')->get();
        $playlistid_decode = json_decode(json_encode($playlistid_de), true);
        
        foreach($version2 as $versions=>$key){
        
        $vcount = DB::table('playlistitems')->where('version',$key)->where('playlistId',$playlistid_decode[$versions])->count('videoId');
        $vcount_de = json_decode(json_encode($vcount), true);
        DB::table('playlist_db')
            ->where('version', $key)
            ->where('playlistId',$playlistid_decode[$versions])
            ->update(['videocount' => $vcount_de]);
        }
        return redirect()->back()->with('success','video deleted successfully');
   }
}
