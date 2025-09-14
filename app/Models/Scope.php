<?php

namespace App\Models;

use App\Models\Admission\CadetExamCenterName;
use App\Traits\MultiTenantModelTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Scope extends Model
{
    use SoftDeletes;

    public $table = 'scopes';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'name',
        'short_name',
        'division_id',
        'district_id',
        'location',
        'area_acre',
        'established',
        'order_no',
        'website',
        'logo',
        'main_domain',
        'facebook',
        'youtube',
        'twitter',
        'linkedin',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
    ];
}