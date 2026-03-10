@extends('layouts.user')

@section('title', 'Edit KYC')

@section('content')
    <div class="container mt-4">
        <h3 class="mb-4"><i class="fa fa-edit"></i> Edit KYC</h3>

        @if (session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
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
                <form action="{{ route('kyc.update', $kyc->id) }}" method="POST" enctype="multipart/form-data">
                    {!! csrf_field() !!}

                    <input type="hidden" name="_method" value="PUT">

                    <div class="form-group mb-3">
                        <label for="name"><i class="fa fa-user"></i> Name</label>
                        <input type="text" id="name" name="name" value="{{ old('name', $kyc->name) }}"
                            class="form-control @if ($errors->has('name')) is-invalid @endif" required>
                        @if ($errors->has('name'))
                            <div class="invalid-feedback">{{ $errors->first('name') }}</div>
                        @endif
                    </div>

                    <div class="form-group mb-3">
                        <label for="country"><i class="fa fa-flag"></i> Country</label>
                        <input type="text" id="country" name="country" value="{{ old('country', $kyc->country) }}"
                            class="form-control @if ($errors->has('country')) is-invalid @endif" required>
                        @if ($errors->has('country'))
                            <div class="invalid-feedback">{{ $errors->first('country') }}</div>
                        @endif
                    </div>

                    <div class="form-group mb-3">
                        <label for="proof"><i class="fa fa-file-image-o"></i> Proof Document (Image)</label>
                        <input type="file" id="proof" name="proof" accept="image/*"
                            class="form-control-file @if ($errors->has('proof')) is-invalid @endif">
                        @if ($kyc->proof)
                            <div class="mt-2">
                                <img src="{{ asset('storage/' . $kyc->proof) }}" width="100" class="img-thumbnail">
                            </div>
                        @endif
                        @if ($errors->has('proof'))
                            <div class="text-danger">{{ $errors->first('proof') }}</div>
                        @endif
                    </div>

                    <div class="form-group mb-3">
                        <label for="passport"><i class="fa fa-passport"></i> Passport Image</label>
                        <input type="file" id="passport" name="passport" accept="image/*"
                            class="form-control-file @if ($errors->has('passport')) is-invalid @endif">
                        @if ($kyc->passport)
                            <div class="mt-2">
                                <img src="{{ asset('storage/' . $kyc->passport) }}" width="100" class="img-thumbnail">
                            </div>
                        @endif
                        @if ($errors->has('passport'))
                            <div class="text-danger">{{ $errors->first('passport') }}</div>
                        @endif
                    </div>

                    <button type="submit" class="btn btn-primary">
                        <i class="fa fa-save"></i> Update KYC
                    </button>
                </form>
            </div>
        </div>
    </div>
@endsection
