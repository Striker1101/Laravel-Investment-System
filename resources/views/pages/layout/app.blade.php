<!DOCTYPE html>
<html lang="en">

<head>
    <title>Universal Marketing | @yield('title')</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name='robots' content='max-image-preview:large' />
    <link rel='stylesheet' href="{{ asset('css/custom.css') }}" />
    <script src="{{ asset('js/custom.js') }}"></script>
    <link rel='stylesheet' id='jkit-elements-main-css' href='{{ asset('css/elements/main.css') }}' media='all' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel='stylesheet' id='wp-block-library-css' href='{{ asset('css/dist/block-library/style.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='allow-webp-image-css' href='{{ asset('css/plugins/allow-webp-image-public.css') }}'
        media='all' />
    <link rel='stylesheet' id='template-kit-export-css'
        href='{{ asset('css/plugins/template-kit-export-public.min.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-icons-css' href='{{ asset('css/plugins/elementor-icons.min.css') }}'
        media='all' />
    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="16x16"
        href="{{ asset('assets/images') }}/{{ $data['general']->favicon ?? '' }}">

    <link rel='stylesheet' id='elementor-frontend-css' href='{{ asset('css/plugins/frontend-lite.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='swiper-css' href='{{ asset('css/plugins/swiper.min.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-3-css' href='{{ asset('css/elements/post-3.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-global-css' href='{{ asset('css/elements/global.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-8.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-9.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-1075.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-1078.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-13.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-1371.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-14.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-17.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-218.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-220.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-8-css' href='{{ asset('css/elements/post-7.css') }}' media='all' />
    <link rel='stylesheet' id='font-awesome-5-all-css' href='{{ asset('css/font-awesome/all.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='font-awesome-4-shim-css' href='{{ asset('css/font-awesome/v4-shims.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='text-editor-style-css' href='{{ asset('css/text-editor.css') }}' media='all' />
    <link rel='stylesheet' id='hello-elementor-css' href='{{ asset('css/elements/style.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='hello-elementor-theme-style-css' href='{{ asset('css/elements/theme.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='google-fonts-1-css' href='{{ asset('css/plugins/google-fonts-1-css.css') }}'
        media='all' />
    <link rel='stylesheet' id='elementor-icons-shared-0-css'
        href='{{ asset('css/font-awesome/fontawesome.min.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-icons-fa-solid-css' href='{{ asset('css/font-awesome/solid.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='elementor-icons-jkiticon-css' href='{{ asset('css/plugins/jkiticon.css') }}'
        media='all' />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <script src="{{ asset('js/jquery.min.js') }}" id="jquery-core-js"></script>
    <script src="{{ asset('js/jquery-migrate.min.js') }}" id="jquery-migrate-js"></script>
    <script src="{{ asset('js/allow-webp-image-public.js') }}" id="allow-webp-image-js"></script>
    <script src="{{ asset('js/template-kit-export-public.min.js') }}" id="template-kit-export-js"></script>
    <script src="{{ asset('js/v4-shims.min.js') }}" id="font-awesome-4-shim-js"></script>
    <link rel="https://api.w.org/" href="{{ asset('data/app.json') }}" />
    <link rel="alternate" type="application/json" href="{{ asset('data/8.json') }}" />
    <link rel="canonical" href="/" />
    <link rel='shortlink' href='/' />
    <link rel="alternate" type="application/json+oembed" href="{{ asset('data/embed.json') }}" />
    <link rel="alternate" type="text/xml+oembed" href="{{ asset('data/oembed.json') }}" />

    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
        var Tawk_API = Tawk_API || {},
            Tawk_LoadStart = new Date();
        (function() {
            var s1 = document.createElement("script"),
                s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src = 'https://embed.tawk.to/681563816693101909a7079c/1iq9opd7n';
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();
    </script>
    <!--End of Tawk.to Script-->
</head>

<body
    class="home  page-template-elementor_header_footer page  jkit-color-scheme elementor-default elementor-template-full-width elementor-kit-3 elementor-page elementor-page-8">
    <div id="page" class="jkit-template  site">

        @include('partials.navbar') <!-- Optional -->

        @yield('content') <!-- Page content goes here -->

        @include('partials.footer') <!-- Optional -->
    </div>

    <style>
    #testimony-toast {
        position: fixed;
        bottom: 20px;
        left: 20px;
        background: #ffffff;
        border-radius: 10px;
        padding: 12px 15px;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
        width: 270px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size: 13px;
        line-height: 1.4;
        display: flex;
        align-items: center;
        opacity: 0;
        transform: translateX(-100%);
        transition: all 0.6s ease-in-out;
        z-index: 9999;
    }

    #testimony-toast.show {
        opacity: 1;
        transform: translateX(0);
    }

    #testimony-toast.hide {
        opacity: 0;
        transform: translateX(-100%);
    }

    #testimony-toast img {
        width: 42px;
        height: 42px;
        border-radius: 50%;
        margin-right: 10px;
        border: 2px solid #eee;
    }

    #testimony-toast .text-wrapper {
        display: flex;
        flex-direction: column;
    }

    #testimony-toast .text-wrapper .name {
        font-weight: 600;
        color: #333;
    }

    #testimony-toast .text-wrapper .info {
        color: #555;
        font-size: 12px;
    }
</style>

<div id="testimony-toast">
    <img id="testimony-image" src="" alt="user" />
    <div class="text-wrapper">
        <span id="testimony-name" class="name">Sam</span>
        <span id="testimony-text" class="info">from Australia just deposited $500</span>
    </div>
</div>


    <!-- #page -->
    <link rel='stylesheet' id='elementor-post-1075-css' href='{{ asset('css/elements/post-1075.css') }}'
        media='all' />
    <link rel='stylesheet' id='sweetalert2-css' href='{{ asset('css/plugins/sweetalert2.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='tiny-slider-css' href='{{ asset('css/plugins/tiny-slider.css') }}' media='all' />
    <link rel='stylesheet' id='elementor-post-1078-css' href='{{ asset('css/elements/post-1078.css') }}'
        media='all' />
    <link rel='stylesheet' id='elementor-icons-fa-brands-css' href='{{ asset('css/font-awesome/brands.min.css') }}'
        media='all' />
    <link rel='stylesheet' id='e-animations-css' href='{{ asset('css/dist/animation/animations.min.css') }}'
        media='all' />

    <script src="{{ asset('js/hello-frontend.min.js') }}" id="hello-theme-frontend-js"></script>
    <script src="{{ asset('js/webpack.runtime.min.js') }}" id="elementor-webpack-runtime-js"></script>
    <script src="{{ asset('js/frontend-modules.min.js') }}" id="elementor-frontend-modules-js"></script>
    <script src="{{ asset('js/waypoints.min.js') }}" id="elementor-waypoints-js"></script>
    <script src="{{ asset('js/core.min.js') }}" id="jquery-ui-core-js"></script>
    <script src="{{ asset('js/frontend.min.js') }}" id="elementor-frontend-js"></script>
    <script src="{{ asset('js/sticky-element.js') }}" id="jkit-sticky-element-js"></script>
    <script src="{{ asset('js/nav-menu.js') }}" id="jkit-element-navmenu-js"></script>
    <script src="{{ asset('js/video-button.js') }}" id="jkit-element-videobutton-js"></script>
    <script src="{{ asset('js/sweetalert2.min.js') }}" id="sweetalert2-js"></script>
    <script src="{{ asset('js/testimonials.js') }}" id="jkit-element-testimonials-js"></script>
    <script src="{{ asset('js/tiny-slider.js') }}" id="tiny-slider-js"></script>
    <script src="{{ asset('js/post-pagination.js') }}" id="jkit-element-pagination-js"></script>
    <script src="{{ asset('js/accordion.js') }}" id="jkit-element-accordion-js"></script>
    <script>
    const toast = document.getElementById("testimony-toast");
    const img = document.getElementById("testimony-image");
    const nameEl = document.getElementById("testimony-name");
    const textEl = document.getElementById("testimony-text");

      function getRandomAmount() {
    const base = Math.floor(Math.random() * (500000 - 1000 + 1)) + 1000;
    return base.toLocaleString();
}

    function getRandomAction() {
        return Math.random() > 0.5 ? "deposited" : "withdrew";
    }

    function showTestimony(user) {
        const name = `${user.name.first} ${user.name.last}`;
        const country = user.location.country;
        const picture = user.picture.thumbnail;
        const amount = getRandomAmount();
        const action = getRandomAction();

        img.src = picture;
        nameEl.textContent = name;
        textEl.textContent = `from ${country} just ${action} $${amount}`;

        toast.classList.add("show");
        toast.classList.remove("hide");

        setTimeout(() => {
            toast.classList.remove("show");
            toast.classList.add("hide");
        }, 9000); // ⏳ stay visible for 9 seconds
    }

    async function fetchAndShowTestimony() {
        try {
            const res = await fetch("https://randomuser.me/api/");
            const data = await res.json();
            const user = data.results[0];
            showTestimony(user);
        } catch (err) {
            console.error("Fetch failed:", err);
        }
    }

    function loopTestimonies() {
        fetchAndShowTestimony();
        const next = Math.floor(Math.random() * 5000) + 10000; // ⏲ 10–15 seconds
        setTimeout(loopTestimonies, next);
    }

    window.addEventListener("DOMContentLoaded", () => {
        setTimeout(loopTestimonies, 3000); // ⏳ first one after 3s
    });
</script>

</body>

</html>
