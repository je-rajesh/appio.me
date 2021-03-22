<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\createapp;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\Profile;
use Illuminate\Support\Facades\Http;
use Illuminate\Validation\Rule;
use Ixudra\Curl\Facades\Curl;

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
        $devname1 = Profile::select('developername')->where('user_id', auth()->user()->id)->first();
        $devname = 'com.' . $devname1->developername . '.<edit Appname here>';
        return view('form.multiform')->with('devname', $devname);
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

        $validated = $request->validate([
            'icon' => ['file', 'image','required', Rule::dimensions()->maxHeight(512)->maxWidth(512)->minHeight(100)->minWidth(100), 'max:800', 'min:20'],
            'color' => include('regex.php'),


        ]);

        // $response = Http::withHeaders([])->post('https://api.startapp.com/pub/app?partner=106903375&token=092a7a03c9cf7d33e5d8fc594d859640', [
        //     "notPublished" => true,
        //     "title" => $request->input('appname'),
        //     "platform" => "android",
        //     "categoryCode" => "A33",
        //     "maturityCode" => "0",
        // ])->json();

        // $startappid = $response['data'][0]['appId'];

        $a = $request->input('appname');
        $i = auth()->user()->id;
        $unique1 = uniqid();
        $unique = substr($unique1, 7);
        $subdomain = 'http://' . $i . 'iapp' . '-' . $unique . '.appio.me/';

        $app_n = $request->input('appname');
        $developername = Profile::select('developername')->where('user_id', auth()->user()->id)->get();
        $developername2 = json_decode(json_encode($developername[0]->developername));
        $developername3 = str_replace(' ', '', strtolower($developername2));
        $app_name = str_replace(' ', '', strtolower($app_n));
        $packagename = 'com.' . $developername3 . '.' . $app_name;




        $request->hasFile('icon_image');

        $filewithext = $request->file('icon')->getClientOriginalName();

        $filename = pathinfo($filewithext, PATHINFO_FILENAME);

        $extension = $request->file('icon')->getClientOriginalExtension();

        $filenametostore = $filename . '_' . time() . '.' . $extension;

        $path = $request->file('icon')->storeAs('public/icon_image', $filenametostore);


        $createapps = new createapp;
        $createapps->appname = $request->input('appname');
        $createapps->icon = $request->input('icon');
        $createapps->color = $request->input('color2');
        $createapps->apikey = $request->input('apikey');
        $createapps->supportemail = $request->input('supportemail');
        $createapps->redirecturl = $request->input('redirecturl');
        $createapps->privacypolicy = $request->input('privacypolicy');
        $createapps->subdomainurl = $subdomain;
        $createapps->user_id = auth()->user()->id;
        $createapps->icon = $filenametostore;
        $createapps->version_no = 1;
        $createapps->packagename = $packagename;
        $createapps->facebook = $request->input('facebook');
        $createapps->admob = $request->input('admob');
        $createapps->fbappid = $request->input('fbappid');
        $createapps->fbbannerid = $request->input('fbbannerid');
        $createapps->fbinterid = $request->input('fbinterid');
        $createapps->adappid = $request->input('adappid');
        $createapps->adbannerid = $request->input('adbannerid');
        $createapps->adinterid = $request->input('adinterid');
        //$createapps->startappid=$startappid;
        $createapps->save();
        return redirect('/playlist')->with('success', 'Application Interface Created Successfully Now Manage Playlist Databse');
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
        if (createapp::where('id', $id)->doesntExist()) {
            //return view('form.edit')-> with('createapp',$createapp);
            abort(404, 'Does Not Exist');
        } elseif (auth()->user()->id != $createapp->user_id) {
            return redirect('/index')->with('error', 'Unauthorized Access');
        } else {
            return view('form.edit')->with('createapp', $createapp);
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


        if ($request->hasFile('icon')) {

            $filewithext = $request->file('icon')->getClientOriginalName();

            $filename = pathinfo($filewithext, PATHINFO_FILENAME);

            $extension = $request->file('icon')->getClientOriginalExtension();

            $filenametostore = $filename . '_' . time() . '.' . $extension;

            $path = $request->file('icon')->storeAs('public/icon_image', $filenametostore);
        }
        $createapps = createapp::find($id);
        $createapps->appname = $request->input('appname');
        $createapps->color = $request->input('color2');
        $createapps->apikey = $request->input('apikey');
        $createapps->appname = $request->input('appname');
        $createapps->supportemail = $request->input('supportemail');
        $createapps->redirecturl = $request->input('redirecturl');
        $createapps->privacypolicy = $request->input('privacypolicy');
        $createapps->advertise = $request->input('optradio');
        $createapps->bannerplacementid = $request->input('bannerid');
        $createapps->interid = $request->input('instantialid');
        $version_no = DB::table('createapp')->select('version_no')->where('id', $id)->get();
        $de_version = json_decode(json_encode($version_no), true);
        $version = implode($de_version[0]);

        $createapps->user_id = auth()->user()->id;
        if ($request->hasFile('icon')) {
            $createapps->icon = $request->input('icon');
            $createapps->icon = $filenametostore;
        }
        $createapps->version_no = $version + 1;

        $createapps->save();




        return redirect()->route('playlist.edit', $id);
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
