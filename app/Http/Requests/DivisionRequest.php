<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DivisionRequest extends FormRequest
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
            'division_en_name' => [
                'required',
            ],
            'division_bn_name' => [
                'required',
            ],
            'url' => [
                'required',
            ],
            'division_short_name' => [
                'required',
            ]
        ];
        return $rules;
    }

    public function getDivisionPayload()
    {
        return collect($this->validated())
            ->only([
                'order_no',
                'division_en_name',
                'division_bn_name',
                'url',
                'division_short_name',
            ])
            ->merge([
                'created_by' => $this->user()->id
            ])
            ->toArray();
    }
}
