<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Profile;


class ProfileController extends Controller
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
        $id = auth()->user()->id;
        $user1 = User::select('email')->where('id',$id)->get();
        $user2 = json_decode(json_encode($user1[0]->email));
        $user3 = explode('@',$user2);
        //$user = json_decode($user2[0]);
        //print_r($user5);
        return view('form.profile')->with('user',$user3[0]);
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
        $this->validate($request,[
            'fullname'=>'required',
            'username'=>'required',
            'developername'=>'required',
            'address'=>'required',
            'city'=>'required',
            'state'=>'required',
            'zip'=>'required'
            ]);

            $profile = new Profile;
            $profile->fullname=$request->input('fullname');
            $profile->username=$request->input('username');
            $profile->developername='1000'.$request->input('developername');
            $profile->address=$request->input('address');
            $profile->city=$request->input('city');
            $profile->state=$request->input('state');
            $profile->zip=$request->input('zip');
            $profile->user_id=auth()->user()->id;
            $profile->save();
            return redirect('/index')->with('success','Profile Created Successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(auth()->user()->id!=$id){
            abort(401,'Unauthorized Action');
        }
        elseif(Profile::where('user_id',$id)->exists()){
        $profile = Profile::select('id','user_id','username','zip','address','city','state','developername','fullname')->where('user_id',$id)->get();
        return view('form.editprofile')->with('profile',$profile[0]);
        }
        else{
            abort(404,'Profile Does Not Exist');
        }
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
        print_r($request->fullname);
        print_r($id);

        $this->validate($request,[
            'fullname'=>'required',
            'username'=>'required',
            'developername'=>'required',
            'address'=>'required',
            'city'=>'required',
            'state'=>'required',
            'zip'=>'required'
            ]);

            $profile = Profile::where('user_id',$id)->first();
            $profile->fullname=$request->input('fullname');
            $profile->username=$request->input('username');
            $profile->developername=$request->input('developername');
            $profile->address=$request->input('address');
            $profile->city=$request->input('city');
            $profile->state=$request->input('state');
            $profile->zip=$request->input('zip');
            $profile->user_id=auth()->user()->id;
            $profile->save();
            return redirect('/index')->with('success','Profile Updated Successfully');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
