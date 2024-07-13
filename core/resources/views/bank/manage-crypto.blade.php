<div class="col-md-12">
    <button id="btn-add-crypto" name="btn-add-crypto" style="margin-bottom: 20px;" class="btn btn-primary"><i
            class="fa fa-plus"></i>
        Add New Crypto</button>
</div>


<table class="table table-striped table-hover table-bordered datatable" id="table-4">
    <thead>
        <tr>
            <th>No</th>
            <th> Name</th>
            <th>Wallet Address </th>
            <th>Wallet Type</th>
            <th>Limit</th>
            <th>Charge</th>
            <th>Status</th>
            <th>Documentation</th>
        </tr>
    </thead>
    <tbody id="tasks-list-crypto" name="tasks-list-crypto">
        <?php $no = 0; ?>
        @foreach ($crypto as $cat)
            <?php $no++; ?>
            <tr id="task_crypto{{ $cat->id }}">
                <td>{{ $no }}</td>
                <td>{{ $cat->name }}</td>
                <td>
                    {{ $cat->wallet_address }}
                </td>
                <td>
                    {{ $cat->wallet_type }}
                </td>
                <td width="14%">{{ $basic->symbol }} {{ $cat->minimum }} - {{ $basic->symbol }} {{ $cat->maximum }}
                </td>
                <td width="13%">{{ $basic->symbol }} {{ $cat->fix }} - {{ $cat->percent }} <i
                        class="fa fa-percent"></i></td>
                <td>
                    @if ($cat->status == 1)
                        <button title="Do Deactive" type="button" class="btn btn-danger btn-sm delete_button_crypto1"
                            data-toggle="modal" data-target="#DelModalCrypto" data-id="{{ $cat->id }}">
                            <i class="fa fa-eye-slash"></i>
                        </button>
                    @else
                        <button title="Do Active" type="button" class="btn btn-success btn-sm delete_button_crypto"
                            data-toggle="modal" data-target="#DelModal1Crypto" data-id="{{ $cat->id }}">
                            <i class="fa fa-eye"></i>
                        </button>
                    @endif
                </td>
                <td>
                    <button class="btn btn-info btn-sm btn-detail open-modal-crypto" value="{{ $cat->id }}"><i
                            class="fa fa-edit"></i></button>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>


<div class="modal fade" id="myModalCrypto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-money"></i> Manage Crypto</h4>
            </div>
            <div class="modal-body">
                <form id="frmTasksCrypto" name="frmTasksCrypto" class="form-horizontal" novalidate="">

                    <div class="form-group error">
                        <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label"> Name :</label>
                        <div class="col-sm-6">
                            <div class="input-group mb15">
                                <input class="form-control" name="name_crypto" id="name_crypto" value=""
                                    type="text" required>
                                <span class="input-group-addon"><i class="fa fa-exchange"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group error">
                        <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label"> Wallet Address :</label>
                        <div class="col-sm-6">
                            <div class="input-group mb15">
                                <input class="form-control" name="wallet_address" id="wallet_address" value=""
                                    type="text" required>
                                <span class="input-group-addon"><i class="fa fa-address-card"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group error">
                        <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Wallet Type :</label>
                        <div class="col-sm-6">
                            <div class="input-group mb15">
                                <input class="form-control" name="wallet_type" id="wallet_type" value=""
                                    type="text" required>
                                <span class="input-group-addon"><i class="fa fa-transgender-alt"></i></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group error">
                        <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Fixed Charge : </label>
                        <div class="col-sm-6">
                            <div class="input-group mb15">
                                <input class="form-control" name="fix_crypto" id="fix_crypto" value=""
                                    type="text" required>
                                <span class="input-group-addon">{{ $basic->currency }}</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group error">
                        <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Percentage : </label>
                        <div class="col-sm-6">
                            <div class="input-group mb15">
                                <input class="form-control" name="percent_crypto" id="percent_crypto" value=""
                                    type="text" required>
                                <span class="input-group-addon"><i class="fa fa-percent"></i></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group error">
                        <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Minimum Amount :
                        </label>
                        <div class="col-sm-6">
                            <div class="input-group mb15">
                                <input class="form-control" name="minimum_crypto" id="minimum_crypto" value=""
                                    type="text" required>
                                <span class="input-group-addon">{{ $basic->currency }}</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group error">
                        <label for="inputTask" class="col-sm-3 col-sm-offset-1 control-label">Maximum Amount :
                        </label>
                        <div class="col-sm-6">
                            <div class="input-group mb15">
                                <input class="form-control" name="maximum_crypto" id="maximum_crypto" value=""
                                    type="text" required>
                                <span class="input-group-addon">{{ $basic->currency }}</span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-4 text-right">
                        <button type="button" class="btn btn-info btn-block btn-icon icon-left" id="btn-save-crypto"
                            value="add"><i class="fa fa-send"></i> Save Crypto</button>
                        <input type="hidden" id="task_id_crypto" name="task_id_crypto" value="0">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="DelModalCrypto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
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
                <form method="post" action="{{ route('manual-deactive') }}" class="form-inline">
                    {!! csrf_field() !!}
                    <input type="hidden" name="id" class="abir_id_crypto" value="0">
                    <input type="hidden" name="type" value="crypto">

                    <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>
                        Close</button>
                    <button type="submit" class="btn btn-danger"><i class="fa fa-check"></i> Yes I'm
                        Sure..!</button>
                </form>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="DelModal1Crypto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
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
                <form method="post" action="{{ route('manual-active') }}" class="form-inline">
                    {!! csrf_field() !!}
                    <input type="hidden" name="id" class="abir_id_crypto" value="0">
                    <input type="hidden" name="type" value="crypto">

                    <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>
                        Close</button>
                    <button type="submit" class="btn btn-danger"><i class="fa fa-check"></i> Yes I'm
                        Sure..!</button>
                </form>
            </div>

        </div>
    </div>
</div>
