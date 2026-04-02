@extends('layouts.dashboard')
@section('content')

    <div class="col-md-12" >
        <button id="btn-add" name="btn-add" style="margin-bottom: 20px;" class="btn btn-primary" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"></i> Add New Wallet Type</button>
    </div>
    
    <table class="table table-striped table-hover table-bordered datatable" id="table-4">
        <thead>
        <tr>
            <th>Not</th>
            <th>Name</th>
            <th>Network</th>
            <th>Created At</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody id="tasks-list" name="tasks-list">
        <?php $no=0; ?>
        @foreach ($wallets as $wallet)
            <?php $no++; ?>
            <tr id="task{{$wallet->id}}">
                <td>{{$no}}</td>
                <td><strong>{{ $wallet->name }}</strong></td>
                <td><span class="label label-info">{{ $wallet->network }}</span></td>
                <td>{{ $wallet->created_at->format('d M Y') }}</td>
                <td>
                    <button class="btn btn-info btn-sm btn-detail btn-icon icon-left" data-toggle="modal" data-target="#editModal{{$wallet->id}}">
                        <i class="fa fa-edit"></i> Edit Wallet
                    </button>

                    <form action="{{ route('delete-wallet', $wallet->id) }}" method="POST" style="display:inline-block;">
                        {{ csrf_field() }}
                        {{ method_field('DELETE') }}
                        <button type="submit" class="btn btn-danger btn-sm btn-icon icon-left" onclick="return confirm('Are you sure you want to delete this Wallet Type?');"><i class="fa fa-trash"></i> Delete</button>
                    </form>
                </td>
            </tr>

        @endforeach
        </tbody>
    </table>

    <!-- Edit Modals (Moved outside table) -->
    @foreach ($wallets as $wallet)
        <div class="modal fade" id="editModal{{$wallet->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="{{ route('edit-wallet', $wallet->id) }}" method="POST">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <h4 class="modal-title"><i class="fa fa-edit"></i> Edit Wallet Type</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Wallet Name</label>
                                <input type="text" class="form-control" name="name" value="{{ $wallet->name }}" required>
                            </div>
                            <div class="form-group">
                                <label>Network</label>
                                <input type="text" class="form-control" name="network" value="{{ $wallet->network }}" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-send"></i> Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    @endforeach

    <!-- Create Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="{{ route('store-wallet') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title"><i class="fa fa-plus"></i> Manage Wallet Type</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Wallet Name (e.g., MetaMask)</label>
                            <input type="text" class="form-control" name="name" placeholder="Wallet Name" required>
                        </div>
                        <div class="form-group">
                            <label>Network (e.g., ERC-20)</label>
                            <input type="text" class="form-control" name="network" placeholder="Network" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-send"></i> Save Wallet</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
