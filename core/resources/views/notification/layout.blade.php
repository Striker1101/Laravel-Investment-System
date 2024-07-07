@extends('layouts.user')

@section('content')
    <script type="text/javascript" async="" src="https://ssl.google-analytics.com/ga.js"></script>
    <script type="text/javascript" async=""
        src="https://www.googletagmanager.com/gtag/js?id=G-9GDT6T7NK1&amp;l=dataLayer&amp;cx=c"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-K3LP6R3"></script>

    <script>
        (function(w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-K3LP6R3');
    </script>
    <div class="mail-env">

        @php
            use App\Notification;

            $inbox_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'inbox')
                ->count();

            $sent_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'sent')
                ->count();

            $draft_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'draft')
                ->count();

            $spam_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'spam')
                ->count();

            $trash_count = Notification::where('user_id', Auth::user()->id)
                ->where('type', 'trash')
                ->count();

            $buiness_count = Notification::where('user_id', Auth::user()->id)
                ->where('tag', 'buiness')
                ->count();

            $news_count = Notification::where('user_id', Auth::user()->id)
                ->where('tag', 'news')
                ->count();

            $stocks_count = Notification::where('user_id', Auth::user()->id)
                ->where('tag', 'stocks')
                ->count();

        @endphp
        <div class="mail-sidebar-row visible-xs"> <a href="{{ route('user-notification-compose') }}"
                class="btn btn-success btn-icon btn-block">
                Compose Mail
                <i class="entypo-pencil"></i> </a> </div>
        @yield('main-body')
        <div class="mail-sidebar">
            <div class="mail-sidebar-row hidden-xs"> <a href="{{ route('user-notification-compose') }}"
                    class="btn btn-success btn-icon btn-block">
                    Compose Mail
                    <i class="entypo-pencil"></i> </a> </div>
            <ul class="mail-menu">
                <li class="{{ Illuminate\Support\Facades\Request::query('type') == 'inbox' ? 'active' : '' }}"> <a
                        href="{{ route('user-notification', ['type' => 'inbox']) }}">
                        <span class="badge badge-danger pull-right">{{ $inbox_count }}</span>
                        Inbox
                    </a> </li>
                <li class="{{ Illuminate\Support\Facades\Request::query('type') == 'sent' ? 'active' : '' }}"> <a
                        href="{{ route('user-notification', ['type' => 'sent']) }}"> <span
                            class="badge badge-gray pull-right">{{ $sent_count }}</span>
                        Sent
                    </a> </li>
                <li class="{{ Illuminate\Support\Facades\Request::query('type') == 'drafts' ? 'active' : '' }}"> <a
                        href="{{ route('user-notification', ['type' => 'drafts']) }}"> <span
                            class="badge badge-gray pull-right">{{ $draft_count }}</span>
                        Drafts
                    </a> </li>
                <li class="{{ Illuminate\Support\Facades\Request::query('type') == 'spam' ? 'active' : '' }}"> <a
                        href="{{ route('user-notification', ['type' => 'spam']) }}"> <span
                            class="badge badge-gray pull-right">{{ $spam_count }}</span>
                        Spam
                    </a> </li>
                <li class="{{ Illuminate\Support\Facades\Request::query('type') == 'trash' ? 'active' : '' }}"> <a
                        href="{{ route('user-notification', ['type' => 'trash']) }}"> <span
                            class="badge badge-gray pull-right">{{ $trash_count }}</span>
                        Trash
                    </a> </li>
            </ul>
            <div class="mail-distancer"></div>
            <h4>Tags</h4>
            <ul class="mail-menu">
                <li class="{{ Illuminate\Support\Facades\Request::query('type') == 'business' ? 'active' : '' }}"> <a
                        href="{{ route('user-notification', ['type' => 'business', 'tag' => 'business']) }}"> <span
                            class="badge badge-danger badge-roundless pull-right">{{ $buiness_count }}</span>
                        Business
                    </a> </li>
                <li class="{{ Illuminate\Support\Facades\Request::query('type') == 'news' ? 'active' : '' }}"> <a
                        href="{{ route('user-notification', ['type' => 'news', 'tag' => 'news']) }}"> <span
                            class="badge badge-info badge-roundless pull-right">{{ $news_count }}</span>
                        News
                    </a> </li>
                <li class="{{ Illuminate\Support\Facades\Request::query('type') == 'tag' ? 'active' : '' }}"> <a
                        href="{{ route('user-notification', ['type' => 'stocks', 'tag' => 'stocks']) }}"> <span
                            class="badge badge-warning badge-roundless pull-right">{{ $stocks_count }}</span>
                        Stocks
                    </a> </li>
            </ul>
        </div>
    </div>

    <style>
        .file-input-wrapper {
            overflow: hidden;
            position: relative;
            cursor: pointer;
            z-index: 1;
        }

        .file-input-wrapper input[type=file],
        .file-input-wrapper input[type=file]:focus,
        .file-input-wrapper input[type=file]:hover {
            position: absolute;
            top: 0;
            left: 0;
            cursor: pointer;
            opacity: 0;
            filter: alpha(opacity=0);
            z-index: 99;
            outline: 0;
        }

        .file-input-name {
            margin-left: 8px;
        }
    </style>


    <link rel="stylesheet" href="https://demo.neontheme.com/assets/js/wysihtml5/bootstrap-wysihtml5.css"
        id="style-resource-1">
    <script src="https://demo.neontheme.com/assets/js/wysihtml5/wysihtml5-0.4.0pre.min.js" id="script-resource-8"></script>
    <script src="https://demo.neontheme.com/assets/js/wysihtml5/bootstrap-wysihtml5.js" id="script-resource-9"></script>
    <script src="https://demo.neontheme.com/assets/js/neon-chat.js" id="script-resource-10"></script>
    <div id="ascrail2000-hr" class="nicescroll-rails"
        style="height: 7px; z-index: 5; top: 93px; left: 0px; position: absolute; cursor: default; display: none;">
        <div
            style="position: relative; top: 0px; height: 5px; width: 0px; background-color: rgb(69, 74, 84); border: 1px solid rgb(69, 74, 84); background-clip: padding-box; border-radius: 1px;">
        </div>
    </div>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-28991003-7']);
        _gaq.push(['_setDomainName', 'demo.neontheme.com']);
        _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') +
                '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();
    </script>
    <textarea tabindex="-1"
        style="position: absolute; inset: -999px auto auto 0px; border: 0px; padding: 0px; box-sizing: content-box; overflow-wrap: break-word; overflow: hidden; transition: none 0s ease 0s; height: 0px !important; min-height: 0px !important; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px; font-weight: 400; font-style: normal; letter-spacing: 0px; text-transform: none; word-spacing: 0px; text-indent: 0px; line-height: 17.1429px;"
        class="autosizejs"></textarea>
@endsection


@section('script')
@endsection
