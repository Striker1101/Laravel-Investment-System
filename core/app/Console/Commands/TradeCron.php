<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\User;
use App\Plan;
use App\Compound;
use App\Trade;
use Illuminate\Support\Facades\Mail;
use App\Mail\TradeNotification;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;

class TradeCron extends Command
{
    protected $signature = 'trade';
    protected $description = 'Automatically perform trades based on user plans and compounds';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        // Log start of the command
        Log::info('TradeCron command started.');

        // Get all users with trade enabled
        $users = User::where('trade', true)->get();


        foreach ($users as $user)
        {
            try
            {
                // if ($user->plan_id == null)
                // {
                //     Log::info('Plan id is null');
                //     continue;
                // }
                $plan = Plan::find($user->plan_id);
                $compound = Compound::find($plan->compound_id);

                if ($this->shouldTrade($user, $compound))
                {
                    $this->performTrade($user, $plan);
                }
            } catch (\Exception $e)
            {
                // Log any errors that occur
                Log::error('Error processing trade for user ID: ' . $user->id . '. Error: ' . $e->getMessage());
            }
        }

        // Log end of the command
        Log::info('TradeCron command completed.');
    }

    protected function shouldTrade($user, $compound)
    {
        $lastTrade = Trade::where('user_id', $user->id)->latest()->first();
        $now = Carbon::now();

        if (!$lastTrade)
        {
            return true;
        }

        switch ($compound->name)
        {
            case 'Hourly':
                return $now->diffInHours($lastTrade->created_at) >= 1;
            case 'Daily':
                return $now->diffInDays($lastTrade->created_at) >= 1;
            case 'Weekly':
                return $now->diffInWeeks($lastTrade->created_at) >= 1;
            case 'Monthly':
                return $now->diffInMonths($lastTrade->created_at) >= 1;
            case 'Yearly':
                return $now->diffInYears($lastTrade->created_at) >= 1;
            default:
                return false;
        }
    }

    protected function performTrade($user, $plan)
    {
        try
        {
            // Calculate profit
            $profit = $user->amount * ($plan->percent / 100);

            // Increment user's profit
            $user->profit += $profit;
            $user->save();

            // Save the trade
            Trade::create([
                'user_id' => $user->id,
                'amount' => $profit,
                'trade_date' => Carbon::now(),
            ]);

            // Send email notification
            Mail::to($user->email)->send(new TradeNotification($user, $profit));

            // Log the successful trade
            Log::info('Trade successful for user ID: ' . $user->id . '. Profit: ' . $profit);
        } catch (\Exception $e)
        {
            // Log any errors that occur during the trade
            Log::error('Error performing trade for user ID: ' . $user->id . '. Error: ' . $e->getMessage());
        }
    }
}
