<?php

namespace App\Http\Controllers\V1\Admin\Region;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Http\Requests\DeleteDivisionRequest;
use App\Http\Requests\DivisionDeleteRequest;
use App\Http\Resources\DivisionResource;
use App\Models\Division;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DivisionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
       // $this->authorize('viewAny', Division::class);

        $limit = $request->has('limit') ? $request->limit : 10;

        $divisions = Division::applyFilters($request->all())
            ->select('divisions.*')
            ->paginateData($limit);

        return DivisionResource::collection($divisions)
            ->additional(['meta' => [
                'division_total_count' => Division::count(),
            ]]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Requests\DivisionRequest $request)
    {
        $this->authorize('create', Division::class);

        $division = Division::createDivision($request);

        return new DivisionResource($division);
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Division $division)
    {
        $this->authorize('view', $division);

        return new DivisionResource($division);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Requests\DivisionRequest $request, Division $division)
    {
        $this->authorize('update', $division);

        $division = Division::updateDivision($request, $division);

        if (is_string($division)) {
            return respondJson('you_cannot_edit_currency', 'Cannot change currency once transactions created');
        }

        return new DivisionResource($division);
    }

    /**
     * Remove a list of Divisions along side all their resources (ie. Estimates, Invoices, Payments and Addresses)
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function delete(DivisionDeleteRequest $request)
    {
        $this->authorize('delete multiple divisions');
       // $this->authorize('delete', Division::class);

        Division::deleteDivision($request->ids);

        return response()->json([
            'success' => true,
        ]);
    }
}
