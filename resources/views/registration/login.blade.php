@extends('layouts.master')

@section('content')

    <h1>Log In</h1>

    <hr>

    <div class="row col-lg-4">
        {!! Form::open(['url' => route('postLogin') ]) !!}

        <div class="form-group">
            <input type="text" class="form-control" name="email" placeholder="Email" autofocus>
            <span>{{ $errors->first('email') }}</span>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password">
            <span>{{ $errors->first('password') }}</span>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-md btn-info">
                Log In
            </button>
        </div>
        {!! Form::close() !!}

        <div>
            <h6>Not a member?</h6><h4><a href="{{ route('register') }}">Register NOW</a></h4>
        </div>

    </div>

@stop