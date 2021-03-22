<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CustomAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {   
        if(auth()->user()->id == 1 || auth()->user()->id == 4 ){
            return $next($request);
        }
        else{
            abort(401);
        }
    }
}
