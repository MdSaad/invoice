<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class DivisionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     */
    public function toArray($request): array
    {
        return [
            'id'                 => $this->id,
            'division_en_name'   => $this->division_en_name,
            'division_bn_name'   => $this->division_bn_name,
            'division_short_name'=> $this->division_short_name,
            'url'                => $this->url,
            'order_no'           => $this->order_no,
        ];
    }
}
