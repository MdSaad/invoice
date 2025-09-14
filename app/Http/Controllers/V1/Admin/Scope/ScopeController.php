<?php

namespace App\Http\Controllers\V1\Admin\Scope;

use App\Http\Controllers\Controller;
use App\Http\Requests\ScopeRequest;
use App\Http\Resources\ScopeResource;
use App\Models\User;
use Illuminate\Http\Request;
use Silber\Bouncer\BouncerFacade;
use App\Models\Scope;

class ScopeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $scopes = Scope::orderBy('order_no', 'asc')->get();

        return ScopeResource::collection($scopes);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ScopeRequest $request)
    {
        $this->authorize('create', Scope::class);

        $role = Scope::create($request->getScopePayload());

        $this->syncAbilities($request, $role);

        return new ScopeResource($role);
    }

    /**
     * Display the specified resource.
     *
     * @param  \Spatie\Permission\Models\Scope  $role
     * @return \Illuminate\Http\Response
     */
    public function show(Scope $role)
    {
        $this->authorize('view', $role);

        return new ScopeResource($role);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Spatie\Permission\Models\Scope  $role
     * @return \Illuminate\Http\Response
     */
    public function update(ScopeRequest $request, Scope $role)
    {
        $this->authorize('update', $role);

        $role->update($request->getScopePayload());

        $this->syncAbilities($request, $role);

        return new ScopeResource($role);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Spatie\Permission\Models\Scope  $role
     * @return \Illuminate\Http\Response
     */
    public function destroy(Scope $role)
    {
        $this->authorize('delete', $role);

        $users = User::whereIs($role->name)->get()->toArray();

        if (! empty($users)) {
            return respondJson('role_attached_to_users', 'Scopes Attached to user');
        }

        $role->delete();

        return response()->json([
            'success' => true,
        ]);
    }

    private function syncAbilities(ScopeRequest $request, $role)
    {
        foreach (config('abilities.abilities') as $ability) {
            $check = array_search($ability['ability'], array_column($request->abilities, 'ability'));
            if ($check !== false) {
                BouncerFacade::allow($role)->to($ability['ability'], $ability['model']);
            } else {
                BouncerFacade::disallow($role)->to($ability['ability'], $ability['model']);
            }
        }

        return true;
    }
}
