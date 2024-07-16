<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class TradeNotification extends Mailable
{
    use Queueable, SerializesModels;

    public $user;
    public $profit;

    public function __construct($user, $profit)
    {
        $this->user = $user;
        $this->profit = $profit;
    }

    public function build()
    {
        return $this->view('emails.tradeNotification')
            ->with([
                'userName' => $this->user->name,
                'profit' => $this->profit,
            ]);
    }
}
