@extends('layouts.dashboard')
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
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/bootstrap-popover-x.min.css') }}">
@endsection
@section('content')
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            var $table4 = jQuery("#table-4");

            $table4.DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copyHtml5',
                    'excelHtml5',
                    'csvHtml5',
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
                    <th>Name</th>
                    <th>Email</th>
                    <th>Current Amount</th>
                    <th>Created At</th>
                    <th>Documentation</th>
                </tr>
            </thead>
            <tbody>
                @php $i = 0;@endphp
                @foreach ($user as $p)
                    @php $i++;@endphp

                    <tr>
                        <td>{{ $i }}</td>
                        <td>{{ $p->name }}</td>
                        <td>{{ $p->email }}</td>
                        <td>{{ $p->amount }} - {{ $basic->currency }}</td>
                        <td>{{ \Carbon\Carbon::parse($p->created_at)->diffForHumans() }}</td>
                        <td width="30%">
                            <button data-toggle="modal" data-target="#view-modal" data-id="{{ $p->id }}" id="getUser"
                                class="btn btn-info btn-icon icon-left">
                                <i class="fa fa-eye"></i> Details
                            </button>
                            <button type="button" class="btn btn-primary btn-icon icon-left" data-toggle="popover-x"
                                data-target="#myPopover{{ $p->id }}" data-placement="top"><i class="fa fa-list"></i>
                                Activity
                            </button>

                            <button data-toggle="modal" data-target="#edit-modal" data-id="{{ $p->id }}"
                                data-amount="{{ $p->amount }}" data-profit="{{ $p->profit }}"
                                data-bonus="{{ $p->bonus }}" data-reference_bonus="{{ $p->reference_bonus }}"
                                data-currency="{{ $p->currency }}" id="editUser"
                                class="editUserClass btn btn-success btn-icon icon-left">
                                <i class="fa fa-edit"></i> Edit
                            </button>
                            <div id="myPopover{{ $p->id }}" class="popover popover-success popover-md">
                                <div class="arrow"></div>
                                <div class="popover-title"><span class="close"
                                        data-dismiss="popover-x">&times;</span><strong><i class="fa fa-indent"></i>
                                        Activity</strong></div>
                                <div class="popover-content">
                                    <a href="{{ route('user-transaction', $p->id) }}"
                                        class="btn btn-info btn-icon icon-left"><i class="fa fa-cloud-upload"></i>
                                        Transaction</a>
                                    <a href="{{ route('user-deposit', $p->id) }}"
                                        class="btn btn-success btn-icon icon-left"><i class="fa fa-cloud-download"></i>
                                        Deposit</a>
                                    <a href="{{ route('user-withdraw', $p->id) }}"
                                        class="btn btn-danger btn-icon icon-left"><i class="fa fa-reply-all"></i>
                                        Withdraw</a>
                                </div>
                            </div>
                            @if ($p->block_status == 1)
                                <button type="button" class="btn btn-danger btn-icon icon-left unblock_button"
                                    data-toggle="modal" data-target="#unblocklModal" data-id="{{ $p->id }}">
                                    <i class="fa fa-user-plus"></i> UnBlock
                                </button>
                            @else
                                <button type="button" class="btn btn-danger btn-icon icon-left block_button"
                                    data-toggle="modal" data-target="#blockModal" data-id="{{ $p->id }}">
                                    <i class="fa fa-user-times"></i> Block
                                </button>
                            @endif

                            @if ($p->trade == 1)
                                <button type="button" class="btn btn-danger btn-icon icon-left  block_button"
                                    style="margin: 2px" data-toggle="modal" data-target="#untradeModal"
                                    data-id="{{ $p->id }}">
                                    <i class="fa fa-hand-paper-o"></i> Stop Trade
                                </button>
                            @else
                                <button type="button" class="btn btn-success btn-icon icon-left unblock_button"
                                    style="margin: 2px" data-toggle="modal" data-target="#tradeModal"
                                    data-id="{{ $p->id }}">
                                    <i class="fa fa-handshake-o"></i> Start Trade
                                </button>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>

        </table>
    </div>
    <meta name="_token" content="{!! csrf_token() !!}" />

    <div class="modal fade" id="blockModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"> <i class='fa fa-exclamation-triangle'></i> Confirmation..!
                    </h4>
                </div>

                <div class="modal-body">

                    <strong>Are you sure you want to <strong>Block</strong> This User.?</strong>
                </div>

                <div class="modal-footer">
                    <form method="post" action="{{ route('user-block') }}" class="form-inline">
                        {!! csrf_field() !!}
                        <input type="hidden" name="id" class="abir_id" value="0">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>
                            Close</button>
                        <button type="submit" class="btn btn-danger"><i class="fa fa-check"></i> Yes I'm
                            Sure..!</button>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="unblocklModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"> <i class='fa fa-exclamation-triangle'></i> Confirmation..!
                    </h4>
                </div>

                <div class="modal-body">

                    <strong>Are you sure you want to <strong>UnBlock</strong> This User.?</strong>
                </div>

                <div class="modal-footer">
                    <form method="post" action="{{ route('user-unblock') }}" class="form-inline">
                        {!! csrf_field() !!}
                        <input type="hidden" name="id" class="abir_id" value="0">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>
                            Close</button>
                        <button type="submit" class="btn btn-danger"><i class="fa fa-check"></i> Yes I'm
                            Sure..!</button>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="tradeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"> <i class='fa fa-exclamation-triangle'></i> Confirmation..!
                    </h4>
                </div>

                <div class="modal-body">

                    <strong>Are you sure you want to <strong>Start</strong> This Trade.?</strong>
                </div>

                <div class="modal-footer">
                    <form method="post" action="{{ route('user-trade') }}" class="form-inline">
                        {!! csrf_field() !!}
                        <input type="hidden" name="id" class="abir_id" value="0">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>
                            Close</button>
                        <button type="submit" class="btn btn-danger"><i class="fa fa-check"></i> Yes I'm
                            Sure..!</button>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="untradeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"> <i class='fa fa-exclamation-triangle'></i> Confirmation..!
                    </h4>
                </div>

                <div class="modal-body">

                    <strong>Are you sure you want to <strong>Stop</strong> This User.?</strong>
                </div>

                <div class="modal-footer">
                    <form method="post" action="{{ route('user-untrade') }}" class="form-inline">
                        {!! csrf_field() !!}
                        <input type="hidden" name="id" class="abir_id" value="0">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>
                            Close</button>
                        <button type="submit" class="btn btn-danger"><i class="fa fa-check"></i> Yes I'm
                            Sure..!</button>
                    </form>
                </div>

            </div>
        </div>
    </div>


    <div id="view-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">
                        <i class="glyphicon glyphicon-user"></i> User Details
                    </h4>
                </div>

                <div class="modal-body">
                    <div id="modal-loader" style="display: none; text-align: center;">
                        <!-- ajax loader -->
                        <img src="{{ asset('assets/images/ajax-loader.gif') }}">
                    </div>

                    <!-- mysql data will be load here -->
                    <div id="dynamic-content"></div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i>
                        Close</button>
                </div>

            </div>
        </div>
    </div>

    <div id="edit-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">
                        <i class="glyphicon glyphicon-user"></i> User Edit
                    </h4>
                </div>

                <div class="modal-body">
                    @if (session()->has('message'))
                        <div style="margin-top: 20px;margin-bottom: -10px;"
                            class="alert alert-{{ session()->get('type') }} alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert"
                                aria-hidden="true">&times;</button>
                            {{ session()->get('message') }}
                        </div>
                    @endif
                    @if (session()->has('status'))
                        <div style="margin-top: 20px;margin-bottom: -10px;" class="alert alert-danger alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert"
                                aria-hidden="true">&times;</button>
                            {{ session()->get('status') }}
                        </div>
                    @endif
                    @if ($errors->any())
                        @foreach ($errors->all() as $error)
                            <div style="margin-top: 20px;margin-bottom: -10px;"
                                class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert"
                                    aria-hidden="true">&times;</button>
                                {!! $error !!}
                            </div>
                        @endforeach
                    @endif

                    <form method="POST" accept-charset="utf-8" class="block">

                        {!! csrf_field() !!}

                        <input type="hidden" name="id">
                        <input type="hidden" name="_method" id="_method" value="PUT">



                        <input type="hidden" name="reference" value="{{ $basic->reference_id }}" required
                            class="form-control" placeholder="Enter Reference ID *" aria-describedby="basic-addon1">

                        <div class="input-group" style="margin: 3px;">
                            <input type="number" name="amount" class="form-control" placeholder="Amount "
                                aria-describedby="amount for user">
                            <span class="input-group-addon" id="basic-addon1">
                                <h5>Amount</h5><i class="fa fa-won"></i>
                            </span>
                        </div>

                        <div class="input-group" style="margin: 3px;">
                            <input type="number" name="profit" class="form-control" placeholder="Profit "
                                aria-describedby="profit for user">
                            <span class="input-group-addon" id="basic-addon1">
                                <h5>Profit
                                </h5><i class="fa fa-money"></i>
                            </span>
                        </div>

                        <div class="input-group" style="margin: 3px;">
                            <input type="number" name="bonus" class="form-control" placeholder="Bonus "
                                aria-describedby="bonus for user">
                            <span class="input-group-addon" id="basic-addon1">
                                <h5>Bonus
                                </h5><i class="fa fa-line-chart"></i>
                            </span>
                        </div>

                        <div class="input-group" style="margin: 3px;">
                            <input type="number" name="reference_bonus" class="form-control"
                                placeholder="Referral_Bonus" aria-describedby="referral_bonus for user">
                            <span class="input-group-addon" id="basic-addon1">
                                <h5>
                                    Referral_Bonus</h5><i class="fa fa-gg-circle"></i>
                            </span>
                        </div>

                        <div class="input-group" style="margin: 3px;">
                            <input type="text" minlength="1" maxlength="4" name="currency" class="form-control"
                                placeholder="Currency " aria-describedby="currency for user">
                            <span class="input-group-addon" id="basic-addon1">
                                <h5>Currency</h5>
                                <i class="fa fa-dollar"></i>
                            </span>
                        </div>

                        <div class="login_option clear_fix" style="margin: 3px;">
                            <div style="width: 100%;" class="submit_button flt_left">
                                <button style="width: 100%" type="submit" class="transition3s hvr-sweep-to-rightB"><i
                                        class="fa fa-send"></i>Update</button>
                            </div> <!-- /submit_button -->
                        </div>


                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i>
                        Close</button>
                </div>

            </div>

            <script>
                $(document).ready(function() {
                    $('.editUserClass').on('click', function(event) {
                        var btn = $(this);
                        var modal = $('#edit-modal');
                        var form = modal.find('form');
                        var action = "{{ url('admin/user-edit-admin') }}/" + btn.data('id');

                        form.attr('action', action);
                        form.find('input[name="id"]').val(btn.data('id'));
                        form.find('input[name="amount"]').val(btn.data('amount'));
                        form.find('input[name="profit"]').val(btn.data('profit'));
                        form.find('input[name="bonus"]').val(btn.data('bonus'));
                        form.find('input[name="reference_bonus"]').val(btn.data('reference_bonus'));
                        form.find('input[name="currency"]').val(btn.data('currency'));
                        modal.modal('show');
                    });
                });
            </script>

        </div>
    </div>
@endsection
@section('scripts')
    <script>
        $(document).ready(function() {

            $(document).on('click', '#getUser', function(e) {

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                })
                e.preventDefault();

                var uid = $(this).data('id'); // get id of clicked row

                $('#dynamic-content').html(''); // leave this div blank
                $('#modal-loader').show(); // load ajax loader on button click

                $.ajax({
                        url: '{{ url('/user-details') }}',
                        type: 'POST',
                        data: 'id=' + uid,
                        dataType: 'html'
                    })
                    .done(function(data) {
                        console.log(data);
                        $('#dynamic-content').html(''); // blank before load.
                        $('#dynamic-content').html(data); // load here
                        $('#modal-loader').hide(); // hide loader
                    })
                    .fail(function() {
                        $('#dynamic-content').html(
                            '<i class="glyphicon glyphicon-info-sign"></i> Something went wrong, Please try again...'
                        );
                        $('#modal-loader').hide();
                    });

            });
        });
    </script>

    <script>
        $(document).ready(function() {

            $(document).on("click", '.block_button', function(e) {
                var id = $(this).data('id');
                $(".abir_id").val(id);
            });

            $(document).on("click", '.block_button', function(e) {
                var id = $(this).data('id');
                $(".abir_id").val(id);
            });

        });
    </script>
    <script>
        $(document).ready(function() {

            $(document).on("click", '.unblock_button', function(e) {
                var id = $(this).data('id');
                $(".abir_id").val(id);
            });

        });
    </script>
    <script>
        $(document).ready(function() {

            $(document).on("click", '.ref_button', function(e) {
                var id = $(this).data('id');
                $(".abir_id").val(id);

            });

        });
    </script>



    <script src="{{ asset('assets/dashboard/js/bootstrap-popover-x.min.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/datatables.css') }}">

    <script src="{{ asset('assets/dashboard/js/datatables.js') }}"></script>
@endsection
