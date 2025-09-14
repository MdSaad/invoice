<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ScopeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     */
    public function toArray($request): array
    {
        return [
            'id'          => $this->id,
            'name'        => $this->name,
            'short_name' => $this->short_name,
            'division_id' =>$this->division_id,
            'district_id' =>$this->district_id,
            'location' =>$this->location,
            'area_acre' =>$this->area_acre,
            'established' =>$this->established,
            'order_no' =>$this->order_no,
            'website' =>$this->website,
            'logo' =>$this->logo,
            'main_domain' =>$this->main_domain,
            'facebook' =>$this->facebook,
            'youtube' =>$this->youtube,
            'twitter' =>$this->twitter,
            'linkedin' =>$this->linkedin,
        ];
    }
}
