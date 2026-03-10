@extends('layouts.user')

@section('content')
    <div class="container">
        <h2>User Tasks</h2>
        <table id="tasks-table" class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Content</th>
                    <th>Status</th>
                    <th>Percent</th>
                    <th>Created At</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($tasks as $task)
                    <tr>
                        <td>{{ $task->id }}</td>
                        <td>{{ $task->title }}</td>
                        <td>{{ $task->content }}</td>
                        <td>
                            <form action="{{ route('update-task-status', ['id' => $task->id]) }}" method="PATCH"
                                class="status-form">
                                {!! csrf_field() !!}
                                {{-- @method('PATCH') --}}
                                <input type="hidden" name="status" value="{{ $task->status ? 0 : 1 }}">
                                <input type="hidden" name="_method" value="PATCH">
                                <input type="checkbox" class="checkbox" {{ $task->status ? 'checked' : '' }}
                                    onchange="this.form.submit()">
                            </form>
                        </td>
                        <td>{{ $task->percent }}</td>
                        <td>{{ $task->created_at->format('Y-m-d H:i:s') }}</td>
                        <td>

                            <form action="{{ route('delete-task', ['id' => $task->id]) }}" method="DELETE"
                                style="margin: 5px;" style="display: inline;">
                                {!! csrf_field() !!}
                                {{-- @method('DELETE') --}}
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection

@section('scripts')
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/datatables.css') }}">
    <script src="{{ asset('assets/dashboard/js/datatables.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#tasks-table').DataTable();
        });
    </script>
@endsection
