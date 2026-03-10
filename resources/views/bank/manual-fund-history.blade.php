@extends('layouts.user')
@section('style')
    <style>
        span.label {
            font-size: 12px;
            !important;
        }

        td,
        th {
            font-size: 14px;
        }
    </style>
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/cus.css') }}">
@endsection
@section('content')
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            var $table4 = jQuery("#table-4");

            $table4.DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'pdfHtml5'
                ]
            });
        });
    </script>

    <div class="table-responsive">
        <table class="table table-striped table-hover table-bordered datatable" id="table-4">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Date</th>
                    <th>Transaction ID</th>
                    <th>Payment Method</th>
                    <th>Amount</th>
                    <th>Total</th>
                    <th>Approved Date</th>
                    <th>Status</th>
                    <th>Documentation</th>
                </tr>
            </thead>
            <div class="table-responsive">
                <tbody>
                    @php
                        $i = 0;
                        // dd($fund);
                    @endphp
                    @foreach ($fund as $p)
                        @php $i++;@endphp
                        <tr>
                            <td>{{ $i }}</td>
                            <td width="15%">{{ \Carbon\Carbon::parse($p->created_at)->format('d-m-y h:i:s A') }}</td>
                            <td>{{ $p->log->transaction_id }}</td>

                            <td width="12%">{{ $p->log->type == 'bank' ? $p->log->method->name : $p->log->method2->name }}
                            </td>

                            <td>{{ $p->log->type === 'bank' ? $basic->symbol : $p->log->method2->wallet_type }}
                                {{ $p->log->amount }}</td>

                            <td width="12%">
                                {{ $p->log->type === 'bank' ? $basic->symbol : $p->log->method2->wallet_type }}
                                {{ $p->log->total }}</td>

                            <td width="10%">
                                @if ($p->made_time == null)
                                    <span class="label label-success"><i class="fa fa-times"></i> pending.</span>
                                @else
                                    {{ \Carbon\Carbon::parse($p->made_time)->format('d-F-y h:i:s A') }}
                                @endif
                            </td>

                            <td>
                                @if ($p->status == 0)
                                    <span class="label label-secondary"><i class="fa fa-spinner"></i> Pending</span>
                                @elseif($p->status == 1)
                                    <span class="label label-success"><i class="fa fa-check" aria-hidden="true"></i>
                                        Completed</span>
                                @else
                                    <span class="label label-danger"><i class="fa fa-exclamation-triangle"
                                            aria-hidden="true"></i>
                                        Refunded</span>
                                @endif

                            </td>
                            <td>
                                <a target="_blank" href="{{ route('manual-fund-details', $p->id) }}"
                                    class="btn btn-info btn-sm btn-icon icon-left"><i class="fa fa-eye"></i>View</a>
                            </td>

                        </tr>
                    @endforeach
                </tbody>
            </div>

        </table>
    </div>
@endsection
@section('scripts')
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/datatables.css') }}">
    <script src="{{ asset('assets/dashboard/js/datatables.js') }}"></script>
@endsection
