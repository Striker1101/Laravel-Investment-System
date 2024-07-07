@extends('notification.layout')
@section('main-body')
    <div class="mail-body">
        <div class="mail-header">
            <div class="mail-title">
                {{ $notification['title'] }}

                @php

                    // select the tag to dislay
                    if ($notification['tag'] == 'business') {
                        $tag = 'success';
                    } elseif ($notification['tag'] == 'news') {
                        $tag = 'primary';
                    } elseif ($notification['tag'] == 'stocks') {
                        $tag = 'info';
                    } else {
                        $tag = null;
                    }

                @endphp
                @if ($tag)
                    <span class="label label-{{ $tag }}">{{ $notification['tag'] }}</span>
                @endif

            </div>
            <div class="mail-links">
                <form id="user-delete-notification-form"
                    action="{{ url('user/user-notification-delete/' . $notification->id) }}" method="PATCH"
                    style="display: none;">
                    {!! csrf_field() !!}
                    @method('PATCH')
                    <input type="hidden" name="_method" value="PATCH">
                </form>
                <a href="#" class="btn btn-default" onclick="printNotification()"> <i class="entypo-print"></i></a>
                <a href="#" class="btn btn-default"
                    onclick="event.preventDefault(); document.getElementById('user-delete-notification-form').submit();">
                    <i class="entypo-trash"></i>
                </a>
                <a class="btn btn-primary btn-icon"> Reply <i class="entypo-reply"></i> </a>
            </div>

            <script>
                function printNotification() {
                    window.print();
                }
            </script>
        </div>
        <div class="mail-info">
            <div class="mail-sender dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="{{ asset('assets/images') }}/{{ Auth::user()->image }}" alt class="img-circle"
                        width="30" />
                    <span>{{ Auth::user()->name }}</span>
                    (
                    @if ($notification->type == 'inbox')
                        <span>{{ $general->email }}</span>
                    @else
                        <span>{{ $notification->user->email }}</span>
                    @endif
                    ) to <span>
                        @if ($notification->type == 'inbox')
                            <span> me</span>
                        @else
                            <span>{{ $general->email }}</span>
                        @endif
                    </span>
                </a>
                <ul class="dropdown-menu dropdown-red">
                    <li> <a href="#"> <i class="entypo-user"></i>
                            Add to Contacts
                        </a> </li>
                    <li> <a href="#"> <i class="entypo-menu"></i>
                            Show other messages
                        </a> </li>
                    <li class="divider"></li>
                    <li> <a href="#"> <i class="entypo-star"></i>
                            Star this message
                        </a> </li>
                    <li> <a href="#"> <i class="entypo-reply"></i>
                            Reply
                        </a> </li>
                    <li> <a href="#"> <i class="entypo-right"></i>
                            Forward
                        </a> </li>
                </ul>
            </div>
            <div class="mail-date">
                {{ $notification->created_at->diffForHumans() }}
            </div>
        </div>
        <div class="mail-text">
            {!! $notification->content !!}
        </div>
        <div class="mail-attachments">
            <h4> <i class="entypo-attach"></i> Attachments <span>({{ $attachments_count }})</span> </h4>
            <ul>


                @foreach ($attachments as $item)
                    <li>
                        <a href="{{ asset('assets/attachments/' . $item->doc) }}" target="_blank"
                            class="thumb {{ $item->status ? 'download' : '' }}">
                            <img src="{{ asset('assets/attachments/' . $item->doc) }}" class="img-rounded" width="100"
                                height="100">

                        </a>
                        <a href="#" class="name">
                            {{ $item->name }}
                            <span>{{ $item->size }}</span>
                        </a>
                        <div class="links">
                            <a data-status="{{ $item->status }}"
                                @if ($item->status) href="{{ asset('assets/attachments/' . $item->doc) }}"
               @else
                   href="#" @endif
                                onclick="if(!{{ $item->status }}) return false;">
                                View
                            </a> -
                            <a href="{{ asset('assets/attachments/' . $item->doc) }}"
                                @if (!$item->status) onclick="return false;" @endif download>
                                Download
                            </a>
                        </div>
                    </li>
                @endforeach


            </ul>
        </div>
        <div class="mail-reply">
            <div class="fake-form">
                <div> <a href="{{ route('user-notification-compose') }}">Reply</a> or <a
                        href="{{ route('user-notification-compose') }}">Forward</a> this message...
                </div>
            </div>
        </div>
    </div>
@endsection
