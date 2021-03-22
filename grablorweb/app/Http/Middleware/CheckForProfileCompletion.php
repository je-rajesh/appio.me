<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckForProfileCompletion
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

        $profile = $request->user()->profile;

        // $pairs = get_object_vars($profile);
        $pairs = $profile->getAttributes();
        

        //workaround for 'packagename' field, at '22/03/2021'
        $pairs['packagename'] = 'helo';

        foreach ($pairs as  $key => $value) {
            if (is_null($value) || $value == '')
                return redirect('/profile');
        }

        return $next($request);
    }
}
