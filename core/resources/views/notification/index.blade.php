@extends('notification.layout')
@section('main-body')
    <div class="mail-body">
        @php
            use Illuminate\Support\Facades\Request;
            use App\Notification; // Adjust the namespace as per your Notification model location

            $type = Request::query('type');
            $content_tag = Request::query('tag');
            $id = Request::query('id');

            $inbox = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'inbox')
                ->orderBy('created_at', 'asc')
                ->get();
            $inbox_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'inbox')
                ->count();

            $sent = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'sent')
                ->orderBy('created_at', 'asc')
                ->get();
            $sent_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'sent')
                ->count();

            $draft = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'draft')
                ->orderBy('created_at', 'asc')
                ->get();
            $draft_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'draft')
                ->count();

            $spam = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'spam')
                ->orderBy('created_at', 'asc')
                ->get();
            $spam_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'spam')
                ->count();

            $trash = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'trash')
                ->orderBy('created_at', 'asc')
                ->get();
            $trash_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'trash')
                ->count();

            $buiness = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'buiness')
                ->orderBy('created_at', 'asc')
                ->get();
            $buiness_count = Notification::where('user_id', Auth::user()->id)
                ->where('tag', 'buiness')
                ->count();

            $news = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'news')
                ->orderBy('created_at', 'asc')
                ->get();
            $news_count = Notification::where('user_id', Auth::user()->id)
                ->where('tag', 'news')
                ->count();

            $stocks = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'stocks')
                ->orderBy('created_at', 'asc')
                ->get();
            $stocks_count = Notification::where('user_id', Auth::user()->id)
                ->where('tag', 'stocks')
                ->orderBy('created_at', 'asc')
                ->count();

            $content = '';
            $count = 0;
            $name = '';
            $tag = '';

            if ($type == 'inbox') {
                $content = $inbox;
                $count = $inbox_count;
                $name = 'inbox';
            } elseif ($type == 'sent') {
                $content = $sent;
                $count = $sent_count;
                $name = 'sent';
            } elseif ($type == 'drafts') {
                $content = $draft;
                $count = $draft_count;
                $name = 'draft';
            } elseif ($type == 'spam') {
                $content = $spam;
                $count = $spam_count;
                $name = 'spam';
            } elseif ($type == 'trash') {
                $content = $trash;
                $count = $trash_count;
                $name = 'trash';
            } elseif ($type == 'buiness') {
                $content = $buiness;
                $count = $buiness_count;
                $name = 'buiness';
            } elseif ($type == 'news') {
                $content = $news;
                $count = $news_count;
                $name = 'news';
            } elseif ($type == 'stocks') {
                $content = $stocks;
                $count = $stocks_count;
                $name = 'stocks';
            } else {
                $content = $inbox;
                $count = $inbox_count; // Default to inbox if type is neither inbox nor sent
            }

            // select the tag to dislay
            if ($content_tag == 'business') {
                $tag = 'success';
            } elseif ($content_tag == 'news') {
                $tag = 'primary';
            } elseif ($content_tag == 'stocks') {
                $tag = 'info';
            } else {
                $tag = '';
            }

        @endphp

        <div class="mail-header">

            <h3 class="mail-title">
                {{ $name }}
                <span class="count">({{ $count }})</span>
            </h3>
            <form method="get" role="form" class="mail-search">
                <div class="input-group"> <input type="text" class="form-control" name="s"
                        placeholder="Search for mail...">
                    <div class="input-group-addon"> <i class="entypo-search"></i> </div>
                </div>
            </form>
        </div>
        <table class="table mail-table">
            <thead>
                <tr>
                    <th width="5%">
                        <div class="checkbox checkbox-replace neon-cb-replacement">
                            <label class="cb-wrapper"><input type="checkbox">
                                <div class="checked"></div>
                            </label>
                        </div>
                    </th>
                    <th colspan="4">
                        <div class="mail-select-options">Mark as Read</div>
                        <div class="mail-pagination" colspan="2"> <strong>1-30</strong> <span>of
                                {{ $count }}</span>
                            <div class="btn-group"> <a href="#" class="btn btn-sm btn-white"><i
                                        class="entypo-left-open"></i></a> <a href="#" class="btn btn-sm btn-white"><i
                                        class="entypo-right-open"></i></a> </div>
                        </div>
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($content as $item)
                    <tr class="{{ $item->status ? 'unread  highlight' : '' }} ">
                        <td>
                            <div class="checkbox checkbox-replace neon-cb-replacement checked">
                                <label class="cb-wrapper">
                                    <form action="{{ route('update-notification-status', ['id' => $item->id]) }}"
                                        method="PATCH" class="status-form">
                                        {!! csrf_field() !!}
                                        {{-- @method('PATCH') --}}
                                        <input type="hidden" name="status" value="{{ $item->status ? 0 : 1 }}">
                                        <input type="hidden" name="_method" value="PATCH">
                                        <input type="checkbox" class="checkbox" {{ $item->status ? 'checked' : '' }}
                                            onchange="this.form.submit()">
                                        <div class="{{ $item->status ? 'checked' : '' }}"></div>
                                    </form>
                                </label>
                            </div>
                        </td>
                        <td class="col-name">
                            <a href="#" class="star stared">
                                <i class="entypo-star"></i>
                            </a>
                            <a href="{{ route('user-notification', ['id' => $item->id]) }}" class="col-name">
                                {{ $item->user->name }}
                            </a>
                        </td>
                        <td class="col-subject">
                            <a href="{{ route('user-notification', ['id' => $item->id]) }}">
                                <span class="label label-{{ $tag }}">{{ $item->tag }}</span>
                                {{ $item->title }}
                            </a>
                        </td>
                        <td class="col-options">
                            <a href="{{ route('user-notification', ['id' => $item->id]) }}">
                                <i class="entypo-attach"></i>
                            </a>
                        </td>
                        <td class="col-time">
                            {{ $item->created_at->diffForHumans() }}
                        </td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th width="5%">
                        <div class="checkbox checkbox-replace neon-cb-replacement"> <label class="cb-wrapper"><input
                                    type="checkbox">
                                <div class="checked"></div>
                            </label> </div>
                    </th>
                    <th colspan="4">
                        <div class="mail-pagination" colspan="2"> <strong>1-30</strong> <span>of
                                {{ $count }}</span>
                            <div class="btn-group"> <a href="#" class="btn btn-sm btn-white"><i
                                        class="entypo-left-open"></i></a> <a href="#" class="btn btn-sm btn-white"><i
                                        class="entypo-right-open"></i></a> </div>
                        </div>
                    </th>
                </tr>
            </tfoot>
        </table>
    </div>
@endsection
