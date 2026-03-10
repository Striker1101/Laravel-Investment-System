@extends('layouts.user')

@section('title', 'Create KYC')

@section('content')
    <div class="container mt-4">
        <h3 class="mb-4"><i class="fa fa-plus-circle"></i> Create KYC</h3>


        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul class="mb-0">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <div class="card shadow-sm">
            <div class="card-body">
                <form id="kycForm" method="POST" action="{{ route('kyc.store') }}" enctype="multipart/form-data">
                    {!! csrf_field() !!}
                    <input type="hidden" name="user_id" value="{{ auth()->id() }}">

                    <div class="form-group mb-3">
                        <label for="name"><i class="fa fa-user"></i> Name</label>
                        <input type="text" id="name" name="name" value="{{ old('name') }}" class="form-control"
                            required>
                        {{-- @error('name')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror --}}
                    </div>

                    <div class="form-group mb-3">
                        <label for="country"><i class="fa fa-flag"></i> Country</label>
                        <input type="text" id="country" name="country" value="{{ old('country') }}"
                            class="form-control" required>
                        {{-- @error('country')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror --}}
                    </div>

                    <div class="form-group mb-3">
                        <label for="proof"><i class="fa fa-file-image-o"></i> Proof Document (Image)</label>
                        <input type="file" id="proof" name="proof" accept="image/*" class="form-control-file"
                            required>
                        {{-- @error('proof')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror --}}
                    </div>

                    <div class="form-group mb-3">
                        <label for="passport"><i class="fa fa-passport"></i> Passport Image</label>
                        <input type="file" id="passport" name="passport" accept="image/*" class="form-control-file"
                            required>
                        {{-- @error('passport')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror --}}
                    </div>

                    <button type="submit" class="btn btn-success">
                        <i class="fa fa-save"></i> Submit KYC
                    </button>
                </form>

                <div id="responseMessage" class="mt-3"></div>
            </div>
        </div>
    </div>
@endsection
