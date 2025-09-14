<?php

namespace App\Http\Controllers\V1\Admin\Menu;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Http\Requests\DeleteMenuRequest;
use App\Http\Resources\MenuResource;
use App\Models\Menu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
       // $this->authorize('viewAny', Menu::class);

        $limit = $request->has('limit') ? $request->limit : 10;

        $menus = Menu::applyFilters($request->all())
            ->select('menus.*')
            ->paginateData($limit);

        return MenuResource::collection($menus)
            ->additional(['meta' => [
                'menu_total_count' => Menu::count(),
            ]]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Requests\MenuRequest $request)
    {
        $this->authorize('create', Menu::class);

        $menu = Menu::createMenu($request);

        return new MenuResource($menu);
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Menu $menu)
    {
        $this->authorize('view', $menu);

        return new MenuResource($menu);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Requests\MenuRequest $request, Menu $menu)
    {
        $this->authorize('update', $menu);

        $menu = Menu::updateMenu($request, $menu);

        if (is_string($menu)) {
            return respondJson('you_cannot_edit_currency', 'Cannot change currency once transactions created');
        }

        return new MenuResource($menu);
    }

    /**
     * Remove a list of Menus along side all their resources (ie. Estimates, Invoices, Payments and Addresses)
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function delete(DeleteMenuRequest $request)
    {
        $this->authorize('delete multiple menus');

        Menu::deleteMenu($request->ids);

        return response()->json([
            'success' => true,
        ]);
    }
}
