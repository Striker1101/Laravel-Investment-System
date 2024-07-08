@extends('layouts.font-end2')
@section('content')
    <div>
        <img style="width: 100%;" src="{{ asset('assets/images/error_401.jpg') }}" alt="">
        <h3 class="text-align-center" style="text-align: center;">
            Please Contact {{ $general->email }} for more info
        </h3>
    </div>
@endsection
