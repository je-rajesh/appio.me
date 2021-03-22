<?php

namespace App\Http\Controllers;

use App\Models\createapp;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class FormusersController extends Controller
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
     
        //print_r($id3);

        
        $createapp = createapp::all();
        $createapp = createapp::orderBy('created_at','asc')->paginate('100');
        return view ('form.index')->with('createapp',$createapp);
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
    public function store(Request $request)
    {
        
       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\formusers  $formusers
     * @return \Illuminate\Http\Response
     */
    public function show(formusers $formusers)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\formusers  $formusers
     * @return \Illuminate\Http\Response
     */
    public function edit($formusers)
    {
        $id = createapp::select('id')->where('user_id',auth()->user()->id)->latest('created_at')->first();
        $id2 = json_decode(json_encode($id), true);
        $id3 = implode($id2);
         DB::table('createapp')
         ->where('id',$id3)
         ->update(['version_no'=>$id3]);
         return redirect('/index')->with('success','Application Created Successfully');
         // print_r($formusers);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\formusers  $formusers
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, formusers $formusers)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\formusers  $formusers
     * @return \Illuminate\Http\Response
     */
    public function destroy(formusers $formusers)
    {
        //
    }
}
