<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MenuRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     */
    public function rules(): array
    {
        $rules = [
            'order_no' => [
                'required',
            ],
            'en' => [
                'required',
            ],
            'bn' => [
                'required',
            ],
            'path' => [
                'required',
            ],
            'icon' => [
                'required',
            ],
            'location' => [
                'required',
            ],
            'menu_status' => [
                'required',
            ]
        ];
        return $rules;
    }

    public function getMenuPayload()
    {
        $slug = slugify($this->path == '#' ? $this->en : $this->path);
        return collect($this->validated())
            ->only([
                'order_no',
                'en',
                'bn',
                'path',
                'icon',
                'location',
                'menu_status'
            ])
            ->merge([
                'slug' => $slug,
                'created_by' => $this->user()->id
            ])
            ->toArray();
    }
}
