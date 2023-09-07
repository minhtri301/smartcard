<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class CustomerUpdateRequest extends FormRequest
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
            'user_name' => 'required|min:5|unique:customer,user_name,'.$this->segment(3),
            'login_code' => 'unique:customer,login_code,'.$this->segment(3),
            'name' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'user_name.required' => 'Vui lòng điền tên đăng nhập.',
            'user_name.min' => 'Tên đăng nhập ít nhất 5 ký tự',
            'user_name.unique' => 'Tên đăng nhập đã tồn tại',
            'login_code.unique' => 'Mã đã tồn tại. Vui lòng đổi mã mới',
        ];
    }
}
