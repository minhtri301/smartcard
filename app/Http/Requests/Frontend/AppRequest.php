<?php

namespace App\Http\Requests\frontend;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class AppRequest extends FormRequest
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
            'id' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'id.required' => 'Vui lòng chọn ứng dụng.',
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
