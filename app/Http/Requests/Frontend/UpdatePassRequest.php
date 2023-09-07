<?php

namespace App\Http\Requests\frontend;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;

class UpdatePassRequest extends FormRequest
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
            'password' => ['required', function ($attribute, $value, $fail) {
                if (!\Hash::check($value, Auth::guard('customer')->user()->password)) {
                    return $fail(__('Mật khẩu không chính xác.'));
                }
            }],
            'passNew' => 'required | min:8', 
            'repassNew' => 'required|same:passNew', 
        ];
    }
    public function messages()
    {
        return [
            'password.required' => 'Vui lòng nhập mật khẩu.',
            'passNew.required' => 'Vui lòng nhập mật khẩu mới.',
            'passNew.min' => 'Mật khẩu dưới 8 ký tự.',
            'repassNew.required' => 'Vui lòng nhập lại mật khẩu.',
            'repassNew.same' => 'Mật khẩu không khớp.',
        ];
    }
}
