<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Division extends Model
{
    use SoftDeletes;

    public $table = 'divisions';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'division_en_name',
        'division_bn_name',
        'division_short_name',
        'order_no',
        'url',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
    ];
    
    public static function createDivision($request)
    {
        $menu = Division::create($request->getDivisionPayload());
        return $menu;
    }

    public static function updateDivision($request, $menu)
    {
        $menu->update($request->getDivisionPayload());
        return $menu;
    }
    public function scopeApplyFilters($query, array $filters)
    {
        $filters = collect($filters);

        if ($filters->get('search')) {
            $query->whereSearch($filters->get('search'));
        }

        if ($filters->get('division_en_name')) {
            $query->whereDivisionEnName($filters->get('division_en_name'));
        }
        if ($filters->get('division_bn_name')) {
            $query->whereDivisionBnName($filters->get('division_bn_name'));
        }
        if ($filters->get('orderByField') || $filters->get('orderBy')) {
            $field = $filters->get('orderByField') ? $filters->get('orderByField') : 'name';
            $orderBy = $filters->get('orderBy') ? $filters->get('orderBy') : 'asc';
            $query->whereOrder($field, $orderBy);
        }
    }
    public function scopePaginateData($query, $limit)
    {
        if ($limit == 'all') {
            return $query->get();
        }
        return $query->paginate($limit);
    }

    public function scopeWhereDivisionEnName($query)
    {
        return $query->where('division_en_name','like', '%'.request()->division_en_name.'%');
    }
    public function scopeWhereDivisionBnName($query)
    {
        return $query->where('division_bn_name','like', '%'.request()->division_bn_name.'%');
    }
    public function scopeWhereOrder($query, $orderByField, $orderBy)
    {
        $query->orderBy($orderByField, $orderBy);
    }
    public static function deleteDivision($ids)
    {
        foreach ($ids as $id) {
            $menu = self::find($id);
            $menu->delete();
        }
        return true;
    }
}