<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class RegisterForm extends Request
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
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'password' => 'required|min:6|confirmed',
            'email' => 'required|email|unique:developers',
            'password_confirmation' => 'required'
        ];
    }
}
