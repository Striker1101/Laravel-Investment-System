{{-- stock.blade.php --}}

<div class="tradingview-widget-container">
    <div class="tradingview-widget-container__widget"></div>
    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function() {
            var script = document.createElement('script');
            script.type = 'text/javascript';
            script.async = true;
            script.src = 'https://s3.tradingview.com/external-embedding/embed-widget-mini-symbol-overview.js';
            script.innerHTML = JSON.stringify({
                "symbol": "{{ $stock }}",
                "width": "100%",
                "height": "100%",
                "locale": "en",
                "dateRange": "12M",
                "colorTheme": "dark",
                "isTransparent": true,
                "autosize": true,
                "largeChartUrl": ""
            });
            document.querySelector('.tradingview-widget-container__widget').appendChild(script);
        });
    </script>
</div>
