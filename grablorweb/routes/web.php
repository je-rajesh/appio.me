<?php

use App\Http\Controllers\CreateappController;
use App\Http\Controllers\CustomAdminController;
use App\Http\Controllers\FormusersController;
use App\Http\Controllers\PlaylistController;
use App\Http\Controllers\PlaylistitemController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ShowplaylistController;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\playlistdb;
use App\Http\Middleware\CustomAdmin;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/welcome', function () {
    return view('welcome');
});
Route::get('/', function () {
    return view('form.home');
});

Auth::routes();

Route::middleware('verified')->group(function () {

    //Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    //Route::get('/index',[App\Http\Controllers\FormusersController::class,'index']);
    //Route::Post('/index',[App\Http\Controllers\FormusersController::class,'store']);
    Route::resource('index', FormusersController::class)->middleware('check_profile_completion');
    //Route::get('/multiform',[App\Http\Controllers\multiformController::class,'index']);
    //Route::get('/multiform',[App\Http\Controllers\CreateappController::class,'index']);
    Route::resource('multiform', CreateappController::class);
    Route::post('playlist2', [PlaylistController::class, 'store'])->middleware(playlistdb::class);
    Route::resource('playlist', PlaylistController::class);
    Route::resource('playlistitem', PlaylistitemController::class);
    Route::resource('showplaylist', ShowplaylistController::class);
    Route::resource('profile', ProfileController::class);


    Route::get('admin', [CustomAdminController::class, 'index'])->middleware(customadmin::class);
    Route::get('/appsinfo', [CustomAdminController::class, 'appsinfo'])->middleware(customadmin::class);
    Route::get('/appsinfo/{id}/edit', [CustomAdminController::class, 'appsinfoedit'])->middleware(customadmin::class);
    Route::put('/appsinfo/{id_v}', [CustomAdminController::class, 'appsinfoupdate'])->middleware(customadmin::class);
});

Route::get('/email/verify', function () {
    return view('auth.verify-email');
})->middleware('auth')->name('verification.notice');


Route::get('/email/verify/{id}/{hash}', function (EmailVerificationRequest $request) {
    $request->fulfill();

    return redirect('/index')->with('type', 'success')->with('message', 'email verified!');
})->middleware(['auth', 'signed'])->name('verification.verify');


Route::post('/email/verification-notification', function (Request $request) {
    $request->user()->sendEmailVerificationNotification();

    return back()->with('message', 'Verification link sent!')->with('type', 'success');
})->middleware(['auth', 'throttle:6,1'])->name('verification.send');
