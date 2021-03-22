<?php

use Illuminate\Support\Facades\Route;
use App\Http\Middleware\playlistdb;

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

Route::get('/', function () {
    return view('welcome');
});
// Route::get('/', function () {
//     return view('form.home');
// });

Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//Route::get('/index',[App\Http\Controllers\FormusersController::class,'index']);
//Route::Post('/index',[App\Http\Controllers\FormusersController::class,'store']);
Route::resource('index',App\Http\Controllers\FormusersController::class);
//Route::get('/multiform',[App\Http\Controllers\multiformController::class,'index']);
//Route::get('/multiform',[App\Http\Controllers\CreateappController::class,'index']);
Route::resource('multiform',App\Http\Controllers\CreateappController::class);
Route::post('playlist2',[App\Http\Controllers\PlaylistController::class,'store'])->middleware(playlistdb::class);
Route::resource('playlist',App\Http\Controllers\PlaylistController::class);
Route::resource('playlistitem',App\Http\Controllers\PlaylistitemController::class);
Route::resource('showplaylist',App\Http\Controllers\ShowplaylistController::class);
Route::resource('profile',App\Http\Controllers\ProfileController::class);




