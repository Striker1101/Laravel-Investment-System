<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class DefaultStock extends Model
{
    protected $table = 'default_stocks';

    protected $fillable = [
        'name',
        'amount',
        'symbol',
        'status',
        'wallet',
        'rate',
    ];

    public function users()
    {
        return $this->belongsToMany(User::class, 'stocks', 'stock_id', 'user_id')
            ->withPivot('amount', 'status', 'created_at', 'updated_at');
    }
    public function stocks()
    {
        return $this->hasOne(Stock::class, 'stock_id');
    }
}