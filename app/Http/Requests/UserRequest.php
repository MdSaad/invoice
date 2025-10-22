<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UserRequest extends FormRequest
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
            'name' => [
                'required',
            ],
            'email' => [
                'required',
                'email',
                Rule::unique('users'),
            ],
            'phone' => [
                'nullable',
            ],
            'password' => [
                'required',
                'min:8',
            ],
            'role_ids' => ['required','array' ],
            'role_ids.*' => ['required','integer' ],
            'scope_id' => [
                'required',
            ],
        ];

        if ($this->getMethod() == 'PUT') {
            $rules['email'] = [
                'required',
                'email',
                Rule::unique('users')->ignore($this->user),
            ];
            $rules['password'] = [
                'nullable',
                'min:8',
            ];
        }

        return $rules;
    }

    public function getUserPayload()
    {
/*         return collect($this->validated())
            ->merge([
                'role_ids' => json_encode($this->role_ids), // Assuming role_ids is an array in the request
                'creator_id' => $this->user()->id,
            ])
            ->toArray(); */
        $data = collect($this->validated())
            ->merge([
                'role_ids' => json_encode($this->role_ids),
                'creator_id' => $this->user()->id,
            ]);

        // ❌ Remove password if it’s empty or null
        if (empty($this->password)) {
            $data->forget('password');
        }
        return $data->toArray();
    }
}
