<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kyc extends Model
{

    protected $table = 'kyc';

    
    protected $fillable = [
        'user_id',
        'name',
        'country',
        'proof',
        'passport',
        'details',
    ];

    protected $casts = [
        'details' => 'array',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
 