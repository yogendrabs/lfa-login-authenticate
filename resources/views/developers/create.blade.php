@extends('layouts.master')

@section('content')

    <h1>Enter Details</h1>
    <hr>
    {!! Form::open([$developer->id],['url'=>route('postCreateDeveloper')]) !!}
    {!! Form::hidden('developer_id', $developer->id)!!}

    {!! Form::label('biodata','Biodata') !!}
    <div class="form-group">
        {!! Form::textarea('biodata', null,['class'=>'form-control','placeholder'=>'Biodata', 'style'=>'height:35px']) !!}
    </div>

    {!! Form::label('','Education') !!}
    <div class="row">
        <div class="col-md-4">
            {!! Form::text('course', null,['class'=>'form-control','placeholder'=>'Course']) !!}
        </div>
        <div class="col-md-4">
            {!! Form::text('university',null,['class'=>'form-control','placeholder'=>'University']) !!}
        </div>
        <div class="col-md-4">
            {!! Form::text('duration',null,['class'=>'form-control','placeholder'=>'Duration']) !!}
        </div>
    </div>

    {!! Form::label('','Experience') !!}
    <div class="row">
        <div class="col-md-4">
            {!! Form::text('title',null,['class'=>'form-control','placeholder'=>'Title']) !!}
        </div>
        <div class="col-md-8">
            {!! Form::textarea('detail',null,['class'=>'form-control','placeholder'=>'Detail', 'style'=>'height:35px']) !!}
        </div>
    </div>

    {!! Form::label('','Projects') !!}
    <div class="row">
        <div class="col-md-4">
            {!! Form::text('title',null,['class'=>'form-control','placeholder'=>'Title']) !!}
        </div>
        <div class="col-md-8">
            {!! Form::textarea('detail',null,['class'=>'form-control','placeholder'=>'Detail', 'style'=>'height:35px']) !!}

        </div>
    </div>
    {{--{{dd($information)}}--}}
    {!! Form::label('','Skills') !!}
    <div class="row form-group">
        <div class="col-md-4">
            {!! Form::text('language',null,['class'=>'form-control','placeholder'=>'Languages']) !!}
        </div>
        <div class="col-md-4">
            {!! Form::text('framework',null,['class'=>'form-control','placeholder'=>'Frameworks']) !!}
        </div>
        <div class="col-md-4">
            {!! Form::text('library',null,['class'=>'form-control','placeholder'=>'Libraries']) !!}
        </div>
    </div>
    <div class="row form-group">
        <div class="col-md-4">
            {!! Form::text('tool',null,['class'=>'form-control','placeholder'=>'Tools']) !!}
        </div>
        <div class="col-md-4">
            {!! Form::text('storage',null,['class'=>'form-control','placeholder'=>'Storage']) !!}
        </div>
        <div class="col-md-4">
            {!! Form::text('other',null,['class'=>'form-control','placeholder'=>'Other']) !!}
        </div>

    </div>
    <div class="pull-right">
        <div class="">
            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
        </div>
    </div>

    {!! Form::close() !!}



    @stop