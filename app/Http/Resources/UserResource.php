<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     */
    public function toArray($request): array
    {
        // Decode role_ids from JSON to an array
        // This assumes that role_ids is stored as a JSON string in the database
        // If it's already an array, you can skip this step
        // If role_ids is not a JSON string, you can directly use it without decoding
        // For example, if role_ids is an array, you can directly use it as is.
        // If role_ids is a JSON string, decode it to an array
        // Here, we assume role_ids is a JSON string in the database    
        $role_ids =  json_decode($this->role_ids, true); // Assuming role_ids is a JSON string in the database

        return [
            'id' => $this->id,
            'name' => $this->name,
            'email' => $this->email,
            'phone' => $this->phone,
            'role' => $this->role,
            'contact_name' => $this->contact_name,
            'company_name' => $this->company_name,
            'website' => $this->website,
            'enable_portal' => $this->enable_portal,
            'currency_id' => $this->currency_id,
            'facebook_id' => $this->facebook_id,
            'google_id' => $this->google_id,
            'github_id' => $this->github_id,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'avatar' => $this->avatar,
            'is_owner' => $this->isOwner(),
            'role_ids' => $role_ids,
            'scope_id' => $this->scope_id,
            'formatted_created_at' => $this->formattedCreatedAt,
        ];
    }
}
