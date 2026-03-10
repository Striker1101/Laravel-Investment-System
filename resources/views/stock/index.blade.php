@extends('layouts.dashboard')
@section('style')
    <style>
        td,
        th {
            font-size: 15px;
        }
    </style>
@endsection
@section('content')
    <div class="col-md-12">
        <button id="btn-add" name="btn-add" style="margin-bottom: 20px;" class="btn btn-primary"><i class="fa fa-plus"></i> Add
            New Stock</button>
    </div>


    <div class="table-responsiv">
        <table class="table table-striped table-hover table-responsive table-bordered datatable" id="table-4">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Amount</th>
                    <th>Symbol</th>
                    <th>Wallet</th>
                    <th>Rate</th>
                    <th>Status</th>
                    <th>Delete</th>
                    <th>Documentation</th>
                </tr>
            </thead>
            <tbody id="tasks-list" name="tasks-list">
                <?php $no = 0; ?>
                @foreach ($stock as $cat)
                    <?php $no++; ?>
                    <tr id="task{{ $cat->id }}">
                        <td>{{ $no }}</td>
                        <td>{{ $cat->name }}</td>
                        <td>
                            {{ $cat->amount }}
                        </td>
                        <td>
                            {{ $cat->symbol }}
                        </td>
                        <td>
                            {{ $cat->wallet }}
                        </td>
                        <td width="14%">{{ $basic->symbol }} {{ $cat->rate }}
                        </td>
                        <td>
                            @if ($cat->status == 1)
                                <button title="Do Deactive" type="button" class="btn btn-danger btn-sm delete_button1"
                                    data-toggle="modal" data-target="#DelModal" data-id="{{ $cat->id }}">
                                    <i class="fa fa-eye-slash"></i>
                                </button>
                            @else
                                <button title="Do Active" type="button" class="btn btn-success btn-sm delete_button"
                                    data-toggle="modal" data-target="#DelModal1" data-id="{{ $cat->id }}">
                                    <i class="fa fa-eye"></i>
                                </button>
                            @endif
                        </td>
                        <td>
                            <button title="Do Delete" type="button" class="btn btn-danger btn-sm delete_button3"
                                data-toggle="modal" data-target="#DelModal3" data-id="{{ $cat->id }}">
                                <i class="fa fa-power-off"></i>
                            </button>

                        </td>
                        <td>
                            <button class="btn btn-info btn-sm btn-detail open-modal" value="{{ $cat->id }}"><i
                                    class="fa fa-edit"></i></button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <meta name="_token" content="{!! csrf_token() !!}" />


    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-money"></i> Manage Default Stocks</h4>
                </div>
                <div class="modal-body">
                    <form id="frmTasks" name="frmTasks" class="form-horizontal" novalidate="">

                        <div class="form-group error">
                            <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label"> Name :</label>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <input class="form-control" name="name" id="name" value="" type="text"
                                        required>
                                    <span class="input-group-addon"><i class="fa fa-bank"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group error">
                            <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Amount :</label>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <input class="form-control" name="amount" id="amount" value="" type="text"
                                        required>
                                    <span class="input-group-addon"><i class="fa fa-file-word-o"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group error">
                            <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Symbol :</label>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <input class="form-control" name="symbol" id="symbol" value="" type="text"
                                        required>
                                    <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group error">
                            <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Wallet :</label>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <input class="form-control" name="wallet" id="wallet" value=""
                                        type="text" required>
                                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="form-group error">
                            <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Rate : </label>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <input class="form-control" name="rate" id="rate" value=""
                                        type="number" min="1" minlength="1" required>
                                    <span class="input-group-addon">{{ $basic->currency }}</span>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </form>
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-4 text-right">
                            <button type="button" class="btn btn-info btn-block btn-icon icon-left" id="btn-save"
                                value="add"><i class="fa fa-send"></i> Save Stock</button>
                            <input type="hidden" id="task_id" name="task_id" value="0">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="DelModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"> <i class='fa fa-exclamation-triangle'></i> Confirmation..!
                    </h4>
                </div>

                <div class="modal-body">
                    <strong>Are you sure you want to Deactivated this.?</strong>
                </div>

                <div class="modal-footer">
                    <form method="post" action="{{ route('default-stock-deactive') }}" class="form-inline">
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
    <div class="modal fade" id="DelModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"> <i class='fa fa-exclamation-triangle'></i> Confirmation..!
                    </h4>
                </div>

                <div class="modal-body">
                    <strong>Are you sure you want to Active this.?</strong>
                </div>

                <div class="modal-footer">
                    <form method="post" action="{{ route('default-stock-active') }}" class="form-inline">
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

    <div class="modal fade" id="DelModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"> <i class='fa fa-exclamation-triangle'></i> Confirmation..!
                    </h4>
                </div>

                <div class="modal-body">
                    <strong>Are you sure you want to Delete this.?</strong>
                </div>

                <div class="modal-footer">
                    <form method="delete" action="{{ route('default-stock-delete') }}" class="form-inline"
                        novalidate="">
                        {{ csrf_field() }}
                        <input type="hidden" name="id" class="abir_id" value="0">

                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>
                            Close</button>
                        <button data-id="" type="button" id="btn_delete" class="btn btn-danger"><i
                                class="fa fa-check"></i> Yes
                            I'm
                            Sure..!</button>
                        <span id="delet_id"></span>
                    </form>
                </div>

            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script>
        $(document).ready(function() {

            $(document).on("click", '.delete_button', function(e) {
                var id = $(this).data('id');
                $(".abir_id").val(id);

            });


        });
        $(document).ready(function() {
            $(document).on("click", '.delete_button3', function(e) {
                var id = $(this).data('id');
                $("#btn_delete").data('id', id);
            });

        });


        $(document).ready(function() {

            $(document).on("click", '.delete_button3', function(e) {
                var id = $(this).data('id');
                $(".abir_id").val(id);

            });

        });
    </script>
    <script>
        jQuery(document).ready(function($) {

            var url = '{{ url('/admin/default-stock') }}';
            var symbol = '{{ $basic->symbol }}';

            //display modal form for creating new task
            $('#btn-add').click(function() {
                $('#btn-save').val("add");
                $('#frmTasks').trigger("reset");
                $('#myModal').modal('show');
            });

            $('#btn_delete').click(function(e) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                })

                var task_id = $(this).data('id');
                var my_url = url += '/' + task_id;
                $.ajax({
                    type: 'DELETE',
                    url: my_url,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data)
                    }
                }).done(function() {
                    swal('Success', ` ${data.name} Deleted Successfully `, 'success');
                });
            })



            //create new task / update existing task

            $("#btn-save").click(function(e) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                })

                e.preventDefault();

                var formData = {
                    'name': $('#name').val(),
                    'amount': $('#amount').val(),
                    'symbol': $('#symbol').val(),
                    'wallet': $('#wallet').val(),
                    'rate': $('#rate').val(),
                    'type_id': $('#type_id').val()
                }

                //used to determine the http verb to use [add=POST], [update=PUT]
                var state = $('#btn-save').val();

                var type = "POST"; //for creating new resource
                var task_id = $('#task_id').val();;
                var my_url = url;

                if (state == "update") {
                    type = "PUT"; //for updating existing resource
                    my_url += '/' + task_id;
                }

                console.log(formData);

                $.ajax({

                    type: type,
                    url: my_url,
                    data: formData,
                    dataType: 'json',
                    success: function(data) {
                        var task = '<tr id="task' + data.id + '"><td>' + data.id + '</td><td>' +
                            data.name + '</td><td>' + data.amount + '</td><td>' + data
                            .symbol + '</td><td>' + data.wallet + '</td><td>' + data.rate +
                            '</td>';
                        task +=
                            '<td><button class="btn btn-success btn-sm delete_button" data-toggle="modal" data-target="' +
                            data.id + '" ><i class="fa fa-eye"></i></button></td>';
                        task +=
                            '<td><button class="btn btn-info btn-sm btn-detail open-modal" value="' +
                            data.id + '"><i class="fa fa-edit"></i></button></td>';

                        if (state == "add") { //if user added a new record
                            $('#tasks-list').append(task);
                        } else { //if user updated an existing record

                            $("#task" + task_id).replaceWith(task);
                        }
                        $('#frmTasks').trigger("reset");

                        $('#myModal').modal('hide');
                    },
                    error: function(data) {}
                }).done(function() {
                    swal('Success', ' Saved Stock Successfully ', 'success');
                });
            });

            //display modal form for task editing
            $('.open-modal').click(function() {
                var task_id = $(this).val();

                $.get(url + '/' + task_id, function(data) {
                    //success data
                    console.log(data);
                    $('#task_id').val(data.id);
                    $('#name').val(data.name);
                    $('#amount').val(data.amount);
                    $('#symbol').val(data.symbol);
                    $('#wallet').val(data.wallet);
                    $('#rate	').val(data.rate);
                    $('#type_id').val(data.id);
                    $('#btn-save').val("update");
                    $('#myModal').modal('show');
                })
            });

        });
    </script>
@endsection
