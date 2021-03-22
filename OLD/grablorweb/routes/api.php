<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GetController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/apitest', function (Request $request) {
    $post =    ([
       'title' => 'vishal',
                'work'  => 'nothing'
    ]);
    return $post;
    });
   // Route::resource('profile',App\Http\Controllers\ProfileController::class);

    Route::post('/apitest', function (Request $request) {
        
        return $request;
        });

        
        Route::get('/config/{id}/{app}', [GetController::class, 'config']);
        Route::get('/playlist/{id}/{app}', [GetController::class, 'playlist']);
        Route::get('/videos/{id}/{app}/{pid}', [GetController::class, 'video']);
