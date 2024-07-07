<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\DefaultStock;
use App\User;

class Stock extends Model
{
    protected $fillable = [
        'user_id',
        'stock_id',
        'amount',
        'status',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function defaultStock()
    {
        return $this->belongsTo(DefaultStock::class, 'stock_id', 'id');
    }
}
