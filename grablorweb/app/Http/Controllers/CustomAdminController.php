<?php

namespace App\Http\Controllers;
use App\Models\createapp;
use App\Models\Profile;
use App\Models\User;
use Illuminate\Http\Request;

class CustomAdminController extends Controller
{
    public function __construct()
    {
        
        $this->middleware('auth');
    }

    public function index(){
        $user = User::select('*')->get();
        return view('admin.customadmin')->with('user',$user);
    }

    public function appsinfo(Request $request){
        $apps  = createapp::select('*')->where('user_id',$request->input('id'))->get();
        return view('admin.appsinfo')->with('apps',$apps);
    }

    public function appsinfoedit($id){
        $id_v = createapp::find($id);
        return view('admin.appsinfoedit')->with('id',$id_v);
        //print_r($id1);
    }

    public function appsinfoupdate(Request $request,$id_v){
    $apps = createapp::find($id_v);
    $apps->buildAppContent =$request->input('buildAppContent');
    $apps->adMobId =$request->input('adMobId');
    $apps->adMobBanner =$request->input('adMobBanner');
    $apps->adMobInterstitial =$request->input('adMobInterstitial');
    $apps->adColonyUUID =$request->input('adColonyUUID');
    $apps->adColonyZonesZero =$request->input('adColonyZonesZero');
    $apps->adColonyZonesOne =$request->input('adColonyZonesOne');
    $apps->adColonyZonesTwo =$request->input('adColonyZonesTwo');
    $apps->homeInt =$request->input('homeInt');
    $apps->homeBanner =$request->input('homeBanner');
    $apps->listInt =$request->input('listInt');
    $apps->listBanner =$request->input('listBanner');
    $apps->listIntAfterX =$request->input('listIntAfterX');
    $apps->oneSignalKey =$request->input('oneSignalKey');
    $apps->loadingVideoText =$request->input('loadingVideoText');
    $apps->videoErrorText =$request->input('videoErrorText');
    $apps->priColor =$request->input('priColor');
    $apps->accColor =$request->input('accColor');
    $apps->shareText =$request->input('shareText');
    $apps->showHomeBanner =$request->input('showHomeBanner');
    $apps->showHomeInterstitial =$request->input('showHomeInterstitial');
    $apps->showListInterstitial =$request->input('showListInterstitial');
    $apps->showVideoPageTop =$request->input('showVideoPageTop');
    $apps->showVideoPageBottom =$request->input('showVideoPageBottom');
    $apps->enableOneSignal = $request->input('enableOneSignal');
    $apps->startappid =$request->input('startappid');
    $apps->save();
    return redirect()->back()->with('success','Data Updated Successfully');
    }

}
