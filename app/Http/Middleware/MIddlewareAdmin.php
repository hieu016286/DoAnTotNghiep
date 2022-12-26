<?php


namespace App\Http\Middleware;
use App\Models\Admin;
use  Closure;

class MIddlewareAdmin
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
		if (get_data_user('admins','level') == Admin::LEVEL_ADMIN) {
			return $next($request);
		}

		return redirect()->route('get.admin.index');
	}
}