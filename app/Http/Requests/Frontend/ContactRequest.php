<?php

namespace App\Http\Requests\Frontend;

use App\Rules\RegexPhone;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class ContactRequest extends FormRequest
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
            'phone' => ['required', new RegexPhone()],
            'content' => 'required',
            'name' => 'required',
            'address' => 'required',
            'email' => 'required|email',
        ];
    }

    public function messages()
    {
        return [
            'phone.required' => 'Vui lòng nhập thông tin',
            'content.required' => 'Vui lòng nhập thông tin',
            'name.required' => 'Vui lòng nhập thông tin',
            'address.required' => 'Vui lòng nhập thông tin',
            'email.required' => 'Vui lòng nhập thông tin',
            'email.email' => 'Email không đúng định dạng',
        ];
    }

    protected function failedValidation(Validator $validator) { 
        
        throw new HttpResponseException(response()->json(
            [
                'success' => false,
                'errorMessage'=>$validator->messages()
            ]
            )
        ); 
    }
}
