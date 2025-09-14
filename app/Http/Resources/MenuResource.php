<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MenuResource extends JsonResource
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
            'en'          => $this->en,
            'bn'          => $this->bn,
            'path'        => $this->path,
            'slug'        => $this->slug,
            'icon'        => $this->icon,
            'location'    => $this->location,
            'parent_id'   => $this->parent_id,
            'order_no'    => $this->order_no,
            'menu_status' => $this->menu_status,

            // Recursive children
            'children_recursive' => MenuResource::collection($this->whenLoaded('childrenRecursive')),
        ];
    }
}
