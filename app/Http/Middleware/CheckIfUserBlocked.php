<?php
namespace App\Http\Middleware;

use App\GeneralSetting;
use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CheckIfUserBlocked
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = Auth::user();
        $general = GeneralSetting::first();

        // Define your blocked route URL
        $blockedUrl = route('blocked');

        if ($user && $user->block_status == 1 && $request->url() !== $blockedUrl)
        {
            // Redirect to the blocked URL if the user is blocked
            return redirect()->route('blocked');
        }

        return $next($request);
    }
}
