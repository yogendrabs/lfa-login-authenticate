@extends('layouts.master')

@section('content')

    <h1>Enter Details</h1>
    <hr>

    {!! Form::model($information,['action'=>['DevelopersController@update',$information["developer"]["id"]]])!!}

    @include('developers._form')

    {!! Form::close() !!}


@stop