<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Authtoken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    { $token = $request->header('APP_Key');
        if($token!='vishal123'){
            return response()->json(['message'=>'Unauthorized Access'],401);
        }
        return $next($request);
    }
}
