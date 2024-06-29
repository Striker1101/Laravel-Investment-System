<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profit extends Model
{

    protected $fillable = [
        'user_id',
        'profit',
        'from',
    ];

    /**
     * Get the user that owns the profit.
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
