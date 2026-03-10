{{-- ✅ Choose layout dynamically --}}
@extends($admin ? 'layouts.dashboard' : 'layouts.user')
@section('title', 'KYC')
@section('content')
<div class="container mt-4">

    {{-- Page header --}}
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h3 class="mb-0"><i class="fa fa-id-card"></i> KYC List</h3>

        {{-- ✅ Show "Add KYC" button only for normal users --}}
        @if(!$admin)
            <a href="{{ route('kyc.create') }}" class="btn btn-success">
                <i class="fa fa-plus-circle"></i> Add KYC
            </a>
        @endif
    </div>

    {{-- ✅ Search form (visible only for admins) --}}
    @if($admin)
        <form action="{{ route('kyc.index') }}" method="GET" class="row g-2 mb-4">
            <div class="col-md-4">
                <input type="text" name="search" value="{{ request('search') }}" class="form-control"
                       placeholder="Search by name or country">
            </div>
            <div class="col-md-2">
                <button class="btn btn-primary w-100">
                    <i class="fa fa-search"></i> Search
                </button>
            </div>
        </form>
    @endif

    {{-- ✅ KYC list --}}
    <div class="row">
        @forelse($kycs as $kyc)
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow border-0 rounded-lg overflow-hidden">

                    {{-- Header --}}
                    <div class="card-header bg-dark text-white d-flex justify-content-between align-items-center">
                        <strong><i class="fa fa-user"></i> {{ $kyc->name }}</strong>
                        <span class="badge bg-info">{{ $kyc->country }}</span>
                    </div>

                    {{-- Body --}}
                    <div class="card-body small">
                        <p><i class="fa fa-envelope"></i> {{ $kyc->user->email ?? 'N/A' }}</p>

                        @if ($kyc->proof)
                            <div class="mb-3">
                                <label class="fw-bold"><i class="fa fa-file-alt"></i> Proof:</label><br>
                                <a href="{{ asset('storage/' . $kyc->proof) }}" target="_blank" rel="noopener noreferrer">
                                    <img src="{{ asset('storage/' . $kyc->proof) }}" class="img-thumbnail"
                                         width="100">
                                </a>
                            </div>
                        @endif

                        @if ($kyc->passport)
                            <div class="mb-3">
                                <label class="fw-bold"><i class="fa fa-passport"></i> Passport:</label><br>
                                <a href="{{ asset('storage/' . $kyc->passport) }}" target="_blank">
                                    <img src="{{ asset('storage/' . $kyc->passport) }}" class="img-thumbnail"
                                         width="100">
                                </a>
                            </div>
                        @endif
                    </div>

                    {{-- Footer (actions) --}}
                    <div class="card-footer bg-light d-flex justify-content-between">
                        {{-- ✅ Show Edit only for normal users --}}
                        @if(!$admin)
                            <a href="{{ route('kyc.edit', $kyc->id) }}" class="btn btn-sm btn-warning">
                                <i class="fa fa-edit"></i> Edit
                            </a>
                        @endif

                        <form action="{{ route('kyc.destroy', $kyc->id) }}" method="POST"
                              onsubmit="return confirm('Are you sure you want to delete this record?');"
                              class="m-0">
                            {!! csrf_field() !!}
                        {{ method_field('DELETE') }}
                            <button type="submit" class="btn btn-sm btn-danger" title="Delete">
                                <i class="fa fa-trash"></i> Delete
                            </button>
                        </form>
                    </div>

                </div>
            </div>
        @empty
            <div class="col-12">
                <div class="alert alert-info text-center">
                    <i class="fa fa-info-circle"></i> No KYC records found.
                </div>
            </div>
        @endforelse
    </div>
</div>
@endsection
