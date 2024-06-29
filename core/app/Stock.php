<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\User;

class Stock extends Model
{

    protected $fillable = [
        'name',
        'amount',
        'wallet',
        'created_at',
        'updated_at',
        'user_id',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
