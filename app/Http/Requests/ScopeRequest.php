<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ScopeRequest extends FormRequest
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
            'name' => ['required','string'],
            'short_name' => ['required'],
            'division_id' => ['required', 'exists:divisions,id'],
            'district_id' => ['required', 'exists:districts,id'],
            'location' => ['required'],
            'area_acre' => ['required', 'numeric'],
            'established' => ['required', 'date'],
            'order_no' => ['required', 'numeric'],
            'website' => ['nullable', 'url'],
            'logo' => ['nullable', 'image'],
            'main_domain' => ['nullable', 'string'],
            'facebook' => ['nullable', 'url'],
            'youtube' => ['nullable', 'url'],
            'twitter' => ['nullable', 'url'],
            'linkedin' => ['nullable', 'url'],
        ];
        return $rules;
    }

    public function getScopePayload()
    {
        return collect($this->validated())
            ->only([
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
                'linkedin'
            ])
            ->merge([
                'created_by' => $this->user()->id
            ])
            ->toArray();
    }
}
