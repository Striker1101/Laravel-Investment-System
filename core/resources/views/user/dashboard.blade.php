<?php
if (!isset($_COOKIE['visited'])) {
    // no cookie, so probably the first time here
    setcookie('visited', 'yes', time() + 5200000); // set visited cookie that will expire in two months

    header('Location: http://jacovox.co.za/user/user-edit');
    exit(); // always use exit after redirect to prevent further loading of the page
}
?>
@extends('layouts.user')

@section('style')
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/cus.css') }}">
    <style>
        .btn {
            margin-bottom: 10px;
        }
    </style>
@endsection

@section('content')

@section('scripts')
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/datatables.css') }}">

    <script src="{{ asset('assets/dashboard/js/ddatatables.js') }}"></script>
@endsection

@endsection

@section('scripts')
<script src="{{ asset('assets/dashboard/js/clipboard.min.js') }}"></script>
<script>
    new Clipboard('.has');
</script>
@endsection
