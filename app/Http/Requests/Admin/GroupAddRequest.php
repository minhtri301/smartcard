<?php

namespace App\Http\Requests\Admin;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class GroupAddRequest extends FormRequest
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
            'name' => 'required', 
            'image' => 'required', 
            'link' => 'required|url',
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Vui lòng nhập tên nhóm', 
            'image.required' => 'Vui lòng chọn ảnh', 
            'link.required' => 'Vui lòng nhập đường dẫn',
            'link.url' => 'Đường dẫn không đúng định dạng',
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
