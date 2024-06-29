@extends('layouts.user')
@section('content')
    <style>
        #defaulHolder {
            display: flex;
            justify-content: space-between;
            width: 100%;
            align-items: center;
        }

        .defaultButton {
            border: transparent;
            height: 30px;
            border-radius: 30px;
            color: white;
            padding: 10px;
            display: flex;
            background-color: #00c0ef;
            gap: 5px;
            font-size: large;
            align-items: center;
        }

        .defaultButton:hover {
            background: darkgray;
        }

        .liq {
            background-color: lightgray;
            padding: 15px;
            border-radius: 20px;
        }

        .liqBTW {
            display: flex;
            justify-content: space-between;
        }

        #liqContainer {
            display: flex;
            flex-direction: column;
            gap: 10px;
            color: black;
            font-size: larger;
        }

        .liq-number {
            border: transparent;
            width: 60px;
            border-radius: 30px;
            padding: 5px;

        }

        .liq-number:focus {
            border: transparent;
        }

        .selectOption {
            border: transparent;
            border-radius: 30px;
            padding: 5px;
        }
    </style>
    <div class="row">
        <script src="https://www.cryptohopper.com/widgets/js/script"></script>
        <div class="cryptohopper-web-widget" data-id="2"></div>
    </div>
    <div class="row">
        <div id="defaulHolder">
            <h1 style="font-size: xx-large;
                color: darkgrey;">
                Default
            </h1>
            <div class="" style="display: flex; gap:6px;">
                <button class="defaultButton btn">
                    <i class="fa fa-plus-circle" style="font-size: xx-large;"></i>
                    <a href="javascript:;" onclick="jQuery('#modal-3').modal('show');" class="btn btn-default">
                        Liquidity
                    </a>
                </button>
            </div>


            <div class="modal fade custom-width " id="modal-3" style="display: none;">
                <div class="modal-dialog" style="width: 50%;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">Deposit Liquidity</h4>

                        </div>
                        <form action="" method="post">
                            <div class="modal-body" id="liqContainer" style="display: flex; flex-wrap:wrap;">
                                <div id="fromLiq" class="liq">
                                    <div class="liqBTW">
                                        <span>From</span>
                                        <span>Balance: <span id="from-balance-amount">
                                                10000
                                            </span> <span id="from-balance-name">name</span></span>
                                    </div>
                                    <hr>
                                    <div class="liqBTW">
                                        <span>amount: <span>
                                                <input min="0" minlength="1" class="liq-number" type="number"
                                                    name="from-number">
                                            </span> </span>
                                        <span>
                                            <select name="fromOption" id="fromOption" class="selectOption">
                                                <option data-name="{{ $member->name }}" data-amount="{{ $member->amount }}"
                                                    value="{{ $member->name }}">
                                                    {{ $member->name }} {{ $member->amount }}
                                                </option>
                                                @foreach ($userStocks as $stock)
                                                    <option data-name="{{ $stock->name }}"
                                                        data-amount="{{ $stock->amount }}" value="{{ $stock->name }}">
                                                        {{ $stock->name }} {{ $stock->amount }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </span>
                                    </div>

                                    <script>
                                        document.addEventListener('DOMContentLoaded', function() {
                                            const selectElement = document.getElementById('fromOption');
                                            const balanceAmountSpan = document.getElementById('from-balance-amount');
                                            const balanceNameSpan = document.getElementById('from-balance-name');

                                            selectElement.addEventListener('change', function() {
                                                const selectedOption = selectElement.options[selectElement.selectedIndex];
                                                const name = selectedOption.getAttribute('data-name');
                                                const amount = selectedOption.getAttribute('data-amount');

                                                balanceAmountSpan.textContent = amount;
                                                balanceNameSpan.textContent = name;
                                            });

                                            // Trigger change event to initialize with the first option's values
                                            selectElement.dispatchEvent(new Event('change'));
                                        });
                                    </script>
                                </div>
                                <div id="midLiq"
                                    style="height:0px; width: 100%; display:flex; align-items: center; justify-content: center; position:relative;">
                                    <i class="fa fa-arrows" style="font-size: 20px;"></i>
                                </div>
                                <div id="toLiq" class="liq">
                                    <div class="liqBTW">
                                        <span>To</span>
                                        <span>Balance: <span id="to-balance-amount">

                                            </span> <span id="to-balance-name"></span></span>
                                    </div>
                                    <hr>
                                    <div class="liqBTW">
                                        <span>amount: <span>
                                                <input min="0" minlength="1" class="liq-number" type="number"
                                                    name="to-number">
                                            </span> </span>
                                        <span>
                                            <select name="toOption" id="toOption" class="selectOption">
                                                <option data-name-to="{{ $member->name }}"
                                                    data-amount-to="{{ $member->amount }}" value="{{ $member->name }}">
                                                    {{ $member->name }} {{ $member->amount }}
                                                </option>
                                                @foreach ($userStocks as $stock)
                                                    <option data-name-to="{{ $stock->name }}"
                                                        data-amount-to="{{ $stock->amount }}" value="{{ $stock->name }}">
                                                        {{ $stock->name }} {{ $stock->amount }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </span>
                                    </div>

                                    <script>
                                        document.addEventListener('DOMContentLoaded', function() {
                                            const selectElement = document.getElementById('toOption');
                                            const balanceAmountSpan = document.getElementById('to-balance-amount');
                                            const balanceNameSpan = document.getElementById('to-balance-name');

                                            selectElement.addEventListener('change', function() {
                                                const selectedOption = selectElement.options[selectElement.selectedIndex];
                                                const name = selectedOption.getAttribute('data-name-to');
                                                const amount = selectedOption.getAttribute('data-amount-to');

                                                balanceAmountSpan.textContent = amount;
                                                balanceNameSpan.textContent = name;
                                            });

                                            // Trigger change event to initialize with the first option's values
                                            selectElement.dispatchEvent(new Event('change'));
                                        });
                                    </script>
                                </div>
                                <hr>
                                <div>
                                    <b style="font-weight: 600;">Slippage Tolerance</b>
                                    <div
                                        style="position: relative; margin:5px; display:flex; align-items:center; justify-content: center;">
                                        <label for="slippage" style="position: relative; top;0; left:0;">
                                            <i class="fa fa-percent" style="font-size: 15px;"></i>
                                        </label>
                                        <input type="text" disabled value="0"
                                            style="border: transparent; width:100%; padding:4px;">
                                    </div>
                                    <div>

                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-default" type="submit">Provide Liquidity</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        <hr>
    </div>

    <style>
        .modal-body {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            background-color: #f9f9f9;
        }

        #planFrom>form>div {
            flex: 1 1 250px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        #planFrom>form>div:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        #planFrom>form h2 {
            font-size: 1.5em;
            margin-bottom: 10px;
            color: #333;
        }

        #planFrom>form p {
            margin: 5px 0;
            color: #666;
        }

        #planFrom>form p:first-child {
            margin-top: 0;
        }

        #planFrom>form p:last-child {
            margin-bottom: 0;
        }
    </style>
    <div class="row" style="position:relative;">
        <a href="javascript:;" onclick="jQuery('#modal-1').modal('show');"
            style="float: right; background-color: lightgray; font-size: larger; padding: 8px;">
            <span class="text-primary" style="">
                Upgrade
            </span>
            to enjoy better Profit more trading tools
        </a>

        <div class="modal fade custom-width " id="modal-1" style="display: none;">
            <div class="modal-dialog" style="width: 50%;">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Upgrade Trading Account</h4>

                    </div>
                    <div class="modal-body" id="liqContainer" style="display: flex; flex-wrap: wrap;">
                        @foreach ($plans as $plan)
                            @php
                                $isDisabled = $plan->amount > $member->amount;
                                $amountColor = $isDisabled ? 'red' : 'green';
                                $cardStyle = $isDisabled ? 'opacity: 0.5;' : '';
                            @endphp
                            <div id="planFrom" class="plan-form">
                                {!! Form::open(['route' => 'withdraw-submit']) !!}
                                <input type="hidden" name="amount" value="{{ $plan->amount }}">
                                <input type="hidden" name="plan_id" value="{{ $plan->id }}">
                                <input type="hidden" name="method_id" value="{{ $upgrade_id->id }}">
                                <input type="hidden" name="acc_name" value="{{ config('app.name') }}">
                                <input type="hidden" name="acc_number" value="{{ 'Private' }}">
                                <input type="hidden" name="acc_code" value="{{ 'Private' }}">

                                <div class="plan-card" style="{{ $cardStyle }} cursor:pointer;">
                                    <h2>{{ $plan->name }}</h2>
                                    <p>Minimum: {{ $plan->minimum }}</p>
                                    <p>Maximum: {{ $plan->maximum }}</p>
                                    <p>Time: {{ $plan->time }} Days</p>
                                    <p>Percent: {{ $plan->percent }}</p>
                                    @if ($plan->compound)
                                        <p>Compound: {{ $plan->compound->name }}</p>
                                    @endif
                                    <h4 style="color: {{ $amountColor }};">Amount: {{ $plan->amount }}</h4>
                                </div>
                                {!! Form::close() !!}
                            </div>
                        @endforeach
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <div class="row">
        <!-- TradingView Widget BEGIN -->
        <div class="tradingview-widget-container">
            <div class="tradingview-widget-container__widget"></div>

            <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-advanced-chart.js" async>
                {
                    "height": "610",
                    "symbol": "NASDAQ:AAPL",
                    "interval": "D",
                    "timezone": "Etc/UTC",
                    "theme": "dark",
                    "style": "1",
                    "locale": "en",
                    "allow_symbol_change": true,
                    "calendar": false,
                    "support_host": "https://www.tradingview.com"
                }
            </script>
        </div>
        <!-- TradingView Widget END -->
    </div>
@endsection


@section('scripts')
    <script>
        $(document).ready(function() {
            $('.plan-card').click(function() {
                var form = $(this).closest('.plan-form').find('form');
                var planName = $(this).find('h2').text().trim();
                var planAmount = $(this).find('h4').text().trim().replace('Amount: ', '');
                var confirmation = confirm(
                    `Are you sure you want to upgrade to ${planName} Plan for ${planAmount}?`);

                console.log(form)
                if (confirmation) {
                    form.submit();
                }
            });
        });
    </script>
@endsection
