<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="{{ $site_title }}" />
    <meta name="author" content="" />

    <link rel="icon" href="{{ asset('assets/images') }}/{{ $general->favicon }}">

    <title>{{ $site_title }} | {{ $page_title }}</title>

    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/jquery-ui-1.10.3.custom.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/font-icons/entypo/css/entypo.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/font-icons/font-awesome/css/font-awesome.css') }}">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/neon-core.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/neon-theme.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/neon-forms.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/custom.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/dashboard/css/sweetalert.css') }}">

    <script src="{{ asset('assets/dashboard/js/jquery-1.11.3.min.js') }}"></script>

</head>

<body class="page-body light-theme  page-fade">
    <div class="page-container">
        <!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

        <div class="sidebar-menu">

            <div class="sidebar-menu-inner">

                <header class="logo-env">

                    <!-- logo -->
                    <div class="logo">
                        <a href="{{ route('home') }}">
                            <img src="{{ asset('assets/images/logo.png') }}" width="120" alt="" />
                        </a>
                    </div>

                    <!-- logo collapse icon -->
                    <div class="sidebar-collapse">
                        <a href="#"
                            class="sidebar-collapse-icon"><!-- add class "with-animation" if you want sidebar to have animation during expanding/collapsing transition -->
                            <i class="entypo-menu"></i>
                        </a>
                    </div>

                    <!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
                    <div class="sidebar-mobile-menu visible-xs">
                        <a href="#"
                            class="with-animation"><!-- add class "with-animation" to support animation -->
                            <i class="entypo-menu"></i>
                        </a>
                    </div>

                </header>

                <ul id="main-menu" class="main-menu">
                    <!-- add class "multiple-expanded" to allow multiple submenus to open -->
                    <!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->

                    <li class="{{ Request::is('user-dashboard') ? ' opened active' : '' }}">
                        <a href="{{ route('user-dashboard') }}">
                            <i class="entypo-air"></i>
                            <span class="title">Dashboard</span>
                        </a>

                    </li>

                    <li class="{{ Request::is('user-buy-and-trade') ? ' opened active' : '' }}">
                        <a href="{{ route('user-buy-and-trade') }}">
                            <i class="fa fa-credit-card"></i>
                            <span class="title">Buy And Trade</span>
                        </a>
                    </li>


                    <li class="{{ Request::is('user-statement') ? ' opened active' : '' }}">
                        <a href="{{ route('user-statement') }}">
                            <i class="entypo-gauge"></i>
                            <span class="title">Statement</span>
                        </a>

                    </li>

                    <li class="has-sub">
                        <a href="#">
                            <span class="title"><i class="fa fa-money"></i> Deposits</span>
                        </a>
                        <ul>

                            <li>
                                <a href="{{ route('manual-fund-add') }}">
                                    <i class="fa fa-bank"></i>
                                    <span class="title">Add Deposit</span>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('manual-fund-history') }}">
                                    <span class="title"><i class="fa fa-history"></i> Deposit History</span>
                                </a>
                            </li>

                        </ul>
                    </li>


                    <li class="has-sub">
                        <a href="#">
                            <span class="title"><i class="fa fa-reply-all"></i> Withdrawals</span>
                        </a>
                        <ul>
                            <li>
                                <a href="{{ route('withdraw-new') }}">
                                    <i class="fa fa-plus"></i>
                                    <span class="title">New Withdrawal</span>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('withdraw-history') }}">
                                    <span class="title"><i class="fa fa-history"></i> Withdrawal History</span>
                                </a>
                            </li>

                        </ul>
                    </li>

                    <li class="{{ Request::is('user-notification') ? ' opened active' : '' }}">
                        <a href="{{ route('user-notification') }}">
                            <i class="fa fa-envelope"></i>
                            <span class="title">Notifications</span>
                        </a>
                    </li>

                    <li class="{{ Request::is('user-activity') ? ' opened active' : '' }}">
                        <a href="{{ route('user-activity') }}">
                            <i class="fa fa-indent"></i>
                            <span class="title">User Activity Log</span>
                        </a>
                    </li>


                    @foreach ($withdrawalcnt as $c)
                        @if ($member->name == $c->name)
                            @continue;
                        @endif
                        <li class="">
                            <a href="../user/switch/start/{{ $c->id }}">
                                <i class="fa fa-address-book"></i>{{ $c->name }}'s Account<br>
                            </a>
                        </li>
                    @endforeach




                </ul>

            </div>

        </div>

        {{-- main-content was the class here --}}
        <div class="main-content">
            <div class="row">
                <div class="col-md-6 col-sm-8 clearfix">
                    <ul class="user-info pull-left pull-none-xsm">
                        <li class="profile-info dropdown"> <a href="#" class="dropdown-toggle"
                                data-toggle="dropdown">
                                <img src="{{ asset('assets/images') }}/{{ Auth::user()->image }}" alt
                                    class="img-circle" width="44" />
                                {{ Auth::user()->name }}
                            </a>
                            <ul class="dropdown-menu">
                                <li class="caret"></li>
                                <li> <a href="{{ route('user-edit') }}"> <i class="entypo-user"></i>
                                        Edit Profile
                                    </a> </li>
                                <li> <a href="{{ route('user-notification') }}"> <i class="entypo-mail"></i>
                                        Inbox
                                    </a> </li>
                                <li> <a href="https://demo.neontheme.com/extra/calendar/"> <i
                                            class="entypo-calendar"></i>
                                        Calendar
                                    </a> </li>
                                <li> <a href="#"> <i class="entypo-clipboard"></i>
                                        Tasks
                                    </a> </li>
                                <li>
                                <li>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                        style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                    <a href="{{ route('logout') }}"
                                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                        Log Out <i class="entypo-logout right"></i>
                                    </a>
                                </li>
                        </li>
                    </ul>
                    </li>
                    </ul>
                    <ul class="user-info pull-left pull-right-xs pull-none-xsm">
                        <li class="notifications dropdown"> <a href="#" class="dropdown-toggle"
                                data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> <i
                                    class="entypo-attention"></i> <span class="badge badge-info">6</span> </a>
                            <ul class="dropdown-menu">
                                <li class="top">
                                    <p class="small"> <a href="#" class="pull-right">Mark all Read</a>
                                        You have <strong>3</strong> new notifications.
                                    </p>
                                </li>
                                <li>
                                    <ul class="dropdown-menu-list scroller">
                                        <li class="unread notification-success"> <a href="#"> <i
                                                    class="entypo-user-add pull-right"></i> <span class="line">
                                                    <strong>New user registered</strong> </span> <span
                                                    class="line small">
                                                    30 seconds ago
                                                </span> </a> </li>
                                        <li class="unread notification-secondary"> <a href="#"> <i
                                                    class="entypo-heart pull-right"></i> <span class="line">
                                                    <strong>Someone special liked this</strong> </span> <span
                                                    class="line small">
                                                    2 minutes ago
                                                </span> </a> </li>
                                        <li class="notification-primary"> <a href="#"> <i
                                                    class="entypo-user pull-right"></i> <span class="line">
                                                    <strong>Privacy settings have been changed</strong> </span> <span
                                                    class="line small">
                                                    3 hours ago
                                                </span> </a> </li>
                                        <li class="notification-danger"> <a href="#"> <i
                                                    class="entypo-cancel-circled pull-right"></i> <span
                                                    class="line">
                                                    John cancelled the event
                                                </span> <span class="line small">
                                                    9 hours ago
                                                </span> </a> </li>
                                        <li class="notification-info"> <a href="#"> <i
                                                    class="entypo-info pull-right"></i>
                                                <span class="line">
                                                    The server is status is stable
                                                </span> <span class="line small">
                                                    yesterday at 10:30am
                                                </span> </a> </li>
                                        <li class="notification-warning"> <a href="#"> <i
                                                    class="entypo-rss pull-right"></i> <span class="line">
                                                    New comments waiting approval
                                                </span> <span class="line small">
                                                    last week
                                                </span> </a> </li>
                                    </ul>
                                </li>
                                <li class="external">
                                    <a href="{{ route('user-notification', ['type' => 'warning']) }}">View all
                                        notifications</a>
                                </li>
                            </ul>
                        </li>
                        <li class="notifications dropdown"> <a href="#" class="dropdown-toggle"
                                data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> <i
                                    class="entypo-mail"></i> <span class="badge badge-secondary">10</span> </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <form class="top-dropdown-search">
                                        <div class="form-group"> <input type="text" class="form-control"
                                                placeholder="Search anything..." name="s" /> </div>
                                    </form>
                                    <ul class="dropdown-menu-list scroller">
                                        <li class="active"> <a href="#"> <span class="image pull-right"> <img
                                                        src="https://demo.neontheme.com/assets/images/thumb-1@2x.png"
                                                        width="44" alt class="img-circle" /> </span> <span
                                                    class="line">
                                                    <strong>Luc Chartier</strong>
                                                    - yesterday
                                                </span> <span class="line desc small">
                                                    This ain’t our first item, it is the best of the rest.
                                                </span> </a> </li>
                                        <li class="active"> <a href="#"> <span class="image pull-right"> <img
                                                        src="https://demo.neontheme.com/assets/images/thumb-2@2x.png"
                                                        width="44" alt class="img-circle" /> </span> <span
                                                    class="line">
                                                    <strong>Salma Nyberg</strong>
                                                    - 2 days ago
                                                </span> <span class="line desc small">
                                                    Oh he decisively impression attachment friendship so if everything.
                                                </span> </a> </li>
                                        <li> <a href="#"> <span class="image pull-right"> <img
                                                        src="https://demo.neontheme.com/assets/images/thumb-3@2x.png"
                                                        width="44" alt class="img-circle" /> </span> <span
                                                    class="line">
                                                    Hayden Cartwright
                                                    - a week ago
                                                </span> <span class="line desc small">
                                                    Whose her enjoy chief new young. Felicity if ye required likewise so
                                                    doubtful.
                                                </span> </a> </li>
                                        <li> <a href="#"> <span class="image pull-right"> <img
                                                        src="https://demo.neontheme.com/assets/images/thumb-4@2x.png"
                                                        width="44" alt class="img-circle" /> </span> <span
                                                    class="line">
                                                    Sandra Eberhardt
                                                    - 16 days ago
                                                </span> <span class="line desc small">
                                                    On so attention necessary at by provision otherwise existence
                                                    direction.
                                                </span> </a> </li>
                                    </ul>
                                </li>
                                <li class="external">
                                    <a href="{{ route('user-notification', ['type' => 'message']) }}">View all
                                        Messages</a>
                                </li>
                            </ul>
                        </li>
                        <li class="notifications dropdown"> <a href="#" class="dropdown-toggle"
                                data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> <i
                                    class="entypo-list"></i> <span class="badge badge-warning">1</span> </a>
                            <ul class="dropdown-menu">
                                <li class="top">
                                    <p>You have 6 pending tasks</p>
                                </li>
                                <li>
                                    <ul class="dropdown-menu-list scroller">
                                        <li> <a href="#"> <span class="task"> <span
                                                        class="desc">Procurement</span>
                                                    <span class="percent">27%</span> </span> <span class="progress">
                                                    <span style="width: 27%;"
                                                        class="progress-bar progress-bar-success"> <span
                                                            class="sr-only">27% Complete</span> </span> </span> </a>
                                        </li>
                                        <li> <a href="#"> <span class="task"> <span class="desc">App
                                                        Development</span> <span class="percent">83%</span> </span>
                                                <span class="progress progress-striped"> <span style="width: 83%;"
                                                        class="progress-bar progress-bar-danger"> <span
                                                            class="sr-only">83%
                                                            Complete</span> </span> </span> </a>
                                        </li>
                                        <li> <a href="#"> <span class="task"> <span class="desc">HTML
                                                        Slicing</span> <span class="percent">91%</span> </span> <span
                                                    class="progress"> <span style="width: 91%;"
                                                        class="progress-bar progress-bar-success"> <span
                                                            class="sr-only">91%
                                                            Complete</span> </span> </span> </a>
                                        </li>
                                        <li> <a href="#"> <span class="task"> <span class="desc">Database
                                                        Repair</span> <span class="percent">12%</span> </span> <span
                                                    class="progress progress-striped"> <span style="width: 12%;"
                                                        class="progress-bar progress-bar-warning"> <span
                                                            class="sr-only">12%
                                                            Complete</span> </span> </span> </a>
                                        </li>
                                        <li> <a href="#"> <span class="task"> <span class="desc">Backup
                                                        Create Progress</span> <span class="percent">54%</span> </span>
                                                <span class="progress progress-striped"> <span style="width: 54%;"
                                                        class="progress-bar progress-bar-info"> <span
                                                            class="sr-only">54%
                                                            Complete</span> </span> </span> </a>
                                        </li>
                                        <li> <a href="#"> <span class="task"> <span class="desc">Upgrade
                                                        Progress</span> <span class="percent">17%</span> </span> <span
                                                    class="progress progress-striped"> <span style="width: 17%;"
                                                        class="progress-bar progress-bar-important"> <span
                                                            class="sr-only">17%
                                                            Complete</span> </span> </span> </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="external"> <a href="#">See all tasks</a> </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-4 clearfix hidden-xs">
                    <ul class="list-inline links-list pull-right">
                        <li class="dropdown language-selector">
                            Language: &nbsp;
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                                data-close-others="true"> <img
                                    src="https://demo.neontheme.com/assets/images/flags/flag-uk.png" width="16"
                                    height="16" /> </a>
                            <ul class="dropdown-menu pull-right">
                                <li> <a href="#"> <img
                                            src="https://demo.neontheme.com/assets/images/flags/flag-de.png"
                                            width="16" height="16" /> <span>Deutsch</span> </a> </li>
                                <li class="active"> <a href="#"> <img
                                            src="https://demo.neontheme.com/assets/images/flags/flag-uk.png"
                                            width="16" height="16" /> <span>English</span> </a> </li>
                                <li> <a href="#"> <img
                                            src="https://demo.neontheme.com/assets/images/flags/flag-fr.png"
                                            width="16" height="16" /> <span>François</span> </a> </li>
                                <li> <a href="#"> <img
                                            src="https://demo.neontheme.com/assets/images/flags/flag-al.png"
                                            width="16" height="16" /> <span>Shqip</span> </a> </li>
                                <li> <a href="#"> <img
                                            src="https://demo.neontheme.com/assets/images/flags/flag-es.png"
                                            width="16" height="16" /> <span>Español</span> </a> </li>
                            </ul>
                        </li>
                        <li class="sep"></li>
                        <li class="sep"></li>
                        <li>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                style="display: none;">
                                {{ csrf_field() }}
                            </form>
                            <a href="{{ route('logout') }}"
                                onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                Log Out <i class="entypo-logout right"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <!--  ==================================VALIDATION ERRORS==================================  -->
                    @if ($errors->any())
                        @foreach ($errors->all() as $error)
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert"
                                    aria-hidden="true">&times;</button>
                                {!! $error !!}
                            </div>
                        @endforeach
                    @endif
                    <!--  ==================================SESSION MESSAGES==================================  -->
                </div>
            </div>

            @yield('content')


            <!-- Footer -->
            <footer class="main">

                &copy; @php echo date('Y'); @endphp <strong>All Copyright Reserved.</strong>

            </footer>
        </div>


    </div>


    <!-- Bottom scripts (common) -->
    <script src="{{ asset('assets/dashboard/js/TweenMax.min.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/jquery-ui-1.10.3.minimal.min.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/bootstrap.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/joinable.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/resizeable.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/neon-api.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/sweetalert.min.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/sweetalert.min.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/jquery-jvectormap-1.2.2.min.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/jquery-jvectormap-europe-merc-en.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/jquery.sparkline.min.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/toastr.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/rickshaw/rickshaw.min.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/rickshaw/vendor/d3.v3.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/raphael-min.js') }}"></script>
    <script src="{{ asset('assets/dashboard/js/morris.min.js') }}"></script>

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
    <script>
        @if (session()->has('message'))
            swal({
                title: "{!! session()->get('title') !!}",
                text: "{!! session()->get('message') !!}",
                type: "{!! session()->get('type') !!}",
                confirmButtonText: "OK"
            });
        @endif
    </script>


    @yield('scripts')

    <!-- JavaScripts initializations and stuff -->
    <script src="{{ asset('assets/dashboard/js/neon-custom.js') }}"></script>
</body>

</html>
