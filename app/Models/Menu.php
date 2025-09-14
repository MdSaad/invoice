<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Menu extends Model
{
    use SoftDeletes;

    public $table = 'menus';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'parent_id',
        'order_no',
        'en',
        'bn',
        'path',
        'slug',
        'path',
        'location',
        'icon',
        'menu_status',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
    ];
    public function children()
    {
        return $this->hasMany(Menu::class, 'parent_id')->where('menu_status', 'Active')->orderBy('order_no');
    }

    public function parent()
    {
        return $this->belongsTo(Menu::class, 'parent_id')->where('menu_status', 'Active')->orderBy('order_no');
    }
    //This sets up unlimited nesting via recursion (children of children of children...).
    public function childrenRecursive()
    {
        return $this->children()->with('childrenRecursive');
    }
    public static function createMenu($request)
    {
        $menu = Menu::create($request->getMenuPayload());
        return $menu;
    }

    public static function updateMenu($request, $menu)
    {
        $menu->update($request->getMenuPayload());
        return $menu;
    }
    public function scopeApplyFilters($query, array $filters)
    {
        $filters = collect($filters);

        if ($filters->get('search')) {
            $query->whereSearch($filters->get('search'));
        }

        if ($filters->get('en')) {
            $query->whereEn($filters->get('en'));
        }
        if ($filters->get('parent_id')) {
            $query->whereParentId($filters->get('parent_id'));
        }else {
            $query->whereNull('parent_id');
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

    public function scopeWhereEn($query)
    {
        return $query->where('en','like', '%'.request()->en.'%');
    }
    public function scopeParentId($query)
    {
        return $query->where('parent_id', request()->parent_id);
    }
    public function scopeWhereOrder($query, $orderByField, $orderBy)
    {
        $query->orderBy($orderByField, $orderBy);
    }
    public static function deleteMenu($ids)
    {
        foreach ($ids as $id) {
            $menu = self::find($id);
            $menu->delete();
        }
        return true;
    }
}