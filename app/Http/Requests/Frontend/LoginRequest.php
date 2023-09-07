<?php

namespace App\Http\Requests\Frontend;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class LoginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'user_name' => 'required|exists:customer,user_name',
        ];
    }

    public function messages()
    {
        return [
            'user_name.required' => 'Vui lòng nhập tài khoản.',
            'user_name.exists' => 'Tài khoản không chính xác',
        ];
    }

    protected function failedValidation(Validator $validator) { 
        
        throw new HttpResponseException(response()->json([
                'success' => false,
                'errorMessage'=>$validator->messages()
            ])
        ); 
    }
}
