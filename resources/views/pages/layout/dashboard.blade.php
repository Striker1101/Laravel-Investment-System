@extends('layouts.dashboard')

@section('content')
    <div class="container mt-4">
        <h3 class="mb-4"><i class="fa fa-id-card"></i> KYC Details</h3>

        <div class="card shadow-sm">
            <div class="card-body">
                <table class="table table-bordered table-hover">
                    <tbody>
                        <tr>
                            <th scope="row"><i class="fa fa-user"></i> Full Name</th>
                            <td>{{ $kyc->full_name }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-envelope"></i> Email</th>
                            <td>{{ $kyc->email }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-phone"></i> Phone</th>
                            <td>{{ $kyc->phone }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-map-marker"></i> Address</th>
                            <td>{{ $kyc->address }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-id-badge"></i> ID Type</th>
                            <td>{{ $kyc->id_type }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-hashtag"></i> ID Number</th>
                            <td>{{ $kyc->id_number }}</td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-file"></i> ID Document</th>
                            <td>
                                @if ($kyc->id_document)
                                    <a href="{{ asset('storage/' . $kyc->id_document) }}" target="_blank"
                                        class="btn btn-sm btn-outline-primary">
                                        <i class="fa fa-eye"></i> View Document
                                    </a>
                                @else
                                    <span class="text-muted">N/A</span>
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><i class="fa fa-info-circle"></i> Status</th>
                            <td>
                                <span
                                    class="badge 
                                @if ($kyc->status == 'approved') badge-success 
                                @elseif($kyc->status == 'pending') badge-warning 
                                @else badge-secondary @endif">
                                    {{ ucfirst($kyc->status) }}
                                </span>
                            </td>
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
