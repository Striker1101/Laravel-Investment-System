@extends('layouts.dashboard')
@section('title', 'Currency Edit')
@section('content')

    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default panel-shadow" data-collapsed="0"><!-- to apply shadow add class "panel-shadow" -->

                <!-- panel head -->
                <div class="panel-heading">
                    <div class="panel-title">{{ $page_title }}</div>

                </div>

                <!-- panel body -->
                <div class="panel-body">

                    {!! Form::model($slider, [
                        'route' => ['slider-update', $slider->id],
                        'method' => 'put',
                        'class' => 'form-horizontal',
                        'files' => true,
                    ]) !!}
                    <div class="form-body">

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>Slider Title: </b></label>

                            <div class="col-sm-6">
                                <input name="title" value="{{ $slider->title }}" class="form-control input-lg"
                                    type="text" required placeholder="Slider Title">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>Slider Description: </b></label>

                            <div class="col-sm-6">
                                <input name="description" value="{{ $slider->description }}" class="form-control input-lg"
                                    type="text" required placeholder="Slider Description">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>Slider Image : </b></label>

                            <div class="col-sm-6">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="fileinput-new thumbnail" style="width: 175px; height: 75px;"
                                        data-trigger="fileinput">
                                        <img style="width: 175px" src="{{ asset('assets/images') }}/{{ $slider->image }}"
                                            alt="...">
                                    </div>
                                    <div class="fileinput-preview fileinput-exists thumbnail"
                                        style="max-width: 175px; max-height: 75px"></div>
                                    <div>
                                        <span class="btn btn-info btn-file">
                                            <span class="fileinput-new">Select image</span>
                                            <span class="fileinput-exists">Change</span>
                                            <input type="file" name="image" accept="image/*">
                                        </span>
                                        <a href="#" class="btn btn-orange fileinput-exists"
                                            data-dismiss="fileinput">Remove</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">

                            <div class="row">
                                <div class="col-md-offset-3 col-md-6">
                                    <button type="submit" class="btn btn-blue btn-block margin-top-10"><i
                                            class="entypo-direction"></i> Update Slider</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    {!! Form::close() !!}

                </div>

            </div>

        </div>
    </div>


@endsection
@section('scripts')
    <script src="{{ asset('assets/dashboard/js/fileinput.js') }}"></script>
@endsection
