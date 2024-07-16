<?php

namespace App;

use App\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trade extends Model
{

    protected $fillable = [
        'user_id',
        'amount',
        'trade_date',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
