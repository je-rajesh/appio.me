<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\createapp;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\Profile;
use Illuminate\Support\Facades\Http;





class CreateappController extends Controller
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
        $devname1 = Profile::select('developername')->where('user_id',auth()->user()->id)->first();
        $devname = 'com.'.$devname1->developername.'.<edit Appname here>';
        return view('form.multiform')->with('devname',$devname);
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
          $a= $request->input('appname');
          $i=auth()->user()->id;
          $unique1 = uniqid();
          $unique = substr($unique1,7);
          $subdomain='http://'.$i.'iapp'.'-'.$unique.'.appio.me';

         $app_n = $request->input('appname');
         $developername = Profile::select('developername')->where('user_id',auth()->user()->id)->get();
         $developername2 = json_decode(json_encode($developername[0]->developername));
         $developername3=str_replace(' ','',strtolower($developername2));
         $app_name = str_replace(' ','',strtolower($app_n));
         $packagename='com.'.$developername3.'.'.$app_name;




            $request->hasFile('icon_image');

                $filewithext = $request->file('icon')->getClientOriginalName();
                
                $filename = pathinfo($filewithext,PATHINFO_FILENAME);
            
                $extension = $request->file('icon')->getClientOriginalExtension();
                
                $filenametostore = $filename.'_'.time().'.'.$extension;
                
                $path = $request->file('icon')->storeAs('public/icon_image',$filenametostore);
            
            
                $createapps = new createapp;
                $createapps ->appname = $request->input('appname');
                $createapps ->icon = $request->input('icon');
                $createapps ->color = $request->input('color2');
                $createapps ->apikey = $request->input('apikey');
                $createapps ->supportemail = $request->input('supportemail');
                $createapps ->redirecturl = $request->input('redirecturl');
                $createapps ->privacypolicy = $request->input('privacypolicy');
                $createapps ->advertise = $request->input('optradio');
                $createapps ->bannerplacementid = $request->input('bannerid');
                $createapps ->interid = $request->input('instantialid');
                $createapps->subdomainurl = $subdomain;
                $createapps->user_id= auth()->user()->id;
                $createapps->icon= $filenametostore;
                $createapps->version_no = 1;
                $createapps->packagename = $request->input('packagename');
                $createapps->save();
                return redirect('/playlist')->with('success','Application Interface Created Successfully Now Manage Playlist Databse'); 

                // $response = Http::withHeaders([
                //         //  'partner'=>'106903375',
                //         //  'token' => '7e25107202fbaf09ba8e5131254c9eb2',
                      

                //     ])->post('https://api.startapp.com/pub/app?partner=106903375&token=7e25107202fbaf09ba8e5131254c9eb2', [
                        
                //     ]);
                //         return $response;
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
        $createapp = createapp::find($id);
        if(createapp::where('id',$id)->doesntExist())
        {
            //return view('form.edit')-> with('createapp',$createapp);
           abort(404,'Does Not Exist');

        }
        elseif(auth()->user()->id != $createapp->user_id){
        return redirect('/index')-> with('error','Unauthorized Access');
        }
        else{
        return view('form.edit')-> with('createapp',$createapp);
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
        

            if($request->hasFile('icon')){

                $filewithext = $request->file('icon')->getClientOriginalName();
                
                $filename = pathinfo($filewithext,PATHINFO_FILENAME);
            
                $extension = $request->file('icon')->getClientOriginalExtension();
                
                $filenametostore = $filename.'_'.time().'.'.$extension;
                
                $path = $request->file('icon')->storeAs('public/icon_image',$filenametostore);
            }
                $createapps = createapp::find($id);
                $createapps ->appname = $request->input('appname');
                $createapps ->color = $request->input('color2');
                $createapps ->apikey = $request->input('apikey');
                $createapps ->appname = $request->input('appname');
                $createapps ->supportemail = $request->input('supportemail');
                $createapps ->redirecturl = $request->input('redirecturl');
                $createapps ->privacypolicy = $request->input('privacypolicy');
                $createapps ->advertise = $request->input('optradio');
                $createapps ->bannerplacementid = $request->input('bannerid');
                $createapps ->interid = $request->input('instantialid');
                $version_no =DB::table('createapp')->select('version_no')->where('id',$id)->get();
                $de_version = json_decode(json_encode($version_no), true);
                $version = implode($de_version[0]);

                $createapps->user_id= auth()->user()->id;
                if($request->hasFile('icon')){
               $createapps ->icon = $request->input('icon');
                  $createapps->icon= $filenametostore;
                 }
                 $createapps ->version_no = $version+1;

                $createapps->save();
                
                
            

                return redirect()->route('playlist.edit',$id); 
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
