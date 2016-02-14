<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/','DevelopersController@welcome');

Route::get('register',['uses'=>'RegistrationController@register','as'=>'register']);

Route::post('register',['uses'=>'RegistrationController@postRegister','as'=>'postRegister']);

Route::get('developer/create/{id}', ['uses'=>'DevelopersController@create','as'=>'createDeveloper']);

Route::post('developer/create/{id}', ['uses'=>'DevelopersController@store','as'=>'postCreateDeveloper'] );

Route::get('login',['uses'=>'RegistrationController@login','as'=>'login']);

Route::post('login',['uses'=>'RegistrationController@postLogin','as'=>'postLogin']);



Route::group(['prefix'=>'developer', 'middleware'=>['auth']],function(){

    Route::get('/list', ['uses'=>'DevelopersController@lists','as'=>'listDeveloper']);

    Route::get('/edit/{id}', ['uses'=>'DevelopersController@edit','as'=>'editDeveloper']);

    Route::post('/edit/{id}',['uses'=>'DevelopersController@update','as'=>'postEditDeveloper']);

    Route::get('/detail/{id}', ['uses'=>'DevelopersController@detail','as'=>'detailDeveloper']);

});