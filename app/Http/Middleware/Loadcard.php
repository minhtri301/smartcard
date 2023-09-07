<?php

namespace App\Http\Middleware;

use App\Models\visit_log;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Jenssegers\Agent\Agent;

class Loadcard
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $geo = geoip($request->ip());
        $agent = new Agent();
        $data = [
            'ip' => $geo->ip, 
            'browser' => $agent->browser(), 
            'os' => $agent->platform(),
            'user' => Auth::guard('customer')->check() ? Auth::guard('customer')->user()->user_name : null , 
            'region' => $geo->city,
            'lt,ln' => $geo->lat.','.$geo->lon,
            'country' => $geo->country,
            'city' => $geo->city, 
            'zip' => $geo->postal_code, 
            'timezone' => $geo->timezone, 
        ];
        visit_log::create($data);
        return $next($request);
    }
}
