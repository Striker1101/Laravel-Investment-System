@extends('layouts.user')
@section('title', 'Show KYC')
@section('content')
    <div class="container mt-4">
        <h3 class="mb-4"><i class="fa fa-id-card"></i> KYC Details</h3>

        <div class="card shadow-sm">
            <div class="card-body">
                <table class="table table-bordered table-hover">
                    <tbody>
                        <tr>
                            <th scope="row"><i class="fa fa-user"></i> Name</th>
                            <td>{{ $kyc->name }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-flag"></i> Country</th>
                            <td>{{ $kyc->country }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-file-image-o"></i> Proof Document</th>
                            <td>
                                @if ($kyc->proof)
                                    <img src="{{ asset('storage/' . $kyc->proof) }}" alt="Proof Document"
                                        class="img-thumbnail" style="max-width: 200px;">
                                @else
                                    <span class="text-muted">No proof uploaded</span>
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-passport"></i> Passport</th>
                            <td>
                                @if ($kyc->passport)
                                    <img src="{{ asset('storage/' . $kyc->passport) }}" alt="Passport Image"
                                        class="img-thumbnail" style="max-width: 200px;">
                                @else
                                    <span class="text-muted">No passport uploaded</span>
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-info-circle"></i> Details</th>
                            <td>
                                @if ($kyc->details)
                                    <pre>{{ json_encode(json_decode($kyc->details), JSON_PRETTY_PRINT) }}</pre>
                                @else
                                    <span class="text-muted">No additional details</span>
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-calendar"></i> Created At</th>
                            <td>{{ $kyc->created_at->format('d M Y, H:i') }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-calendar-check-o"></i> Updated At</th>
                            <td>{{ $kyc->updated_at->format('d M Y, H:i') }}</td>
                        </tr>
                    </tbody>
                </table>

                <a href="{{ route('kyc.edit', $kyc->id) }}" class="btn btn-primary mt-3">
                    <i class="fa fa-edit"></i> Update KYC
                </a>
            </div>
        </div>
    </div>
@endsection
