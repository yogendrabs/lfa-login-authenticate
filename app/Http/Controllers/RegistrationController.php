<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\RegisterForm;
use App\Models\Developer;
use App\Http\Requests\LoginForm;
use \Auth;

class RegistrationController extends Controller
{
    public function register(){
        return view('registration.register');
    }

    public function postRegister(RegisterForm $request)
    {
        $developer=Developer::create($request->all());

        return redirect(route('createDeveloper', [$developer->id]));
    }

    public function login(){
        return view('registration.login');
    }

    public function postLogin(LoginForm $request){
        $email=$request->get('email');
        $password=$request->get('password');

        $info=[
            'email'=>$email,
            'password'=>$password
        ];

        //dd($info);

        if(Auth::attempt($info)){
            return view('developers.list');
            //return redirect(route('listDeveloper'));
        }
        else{
            return ("Hello");
            //return redirect(route('login'));
        }
    }

}
