<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ManualCrypto extends Model
{
    protected $table = 'manual_wallets';

    protected $fillable = [
        'name',
        'wallet_address',
        'wallet_type',
        'minimum',
        'maximum',
        'fix',
        'percent',
        'status',
        'created_at',
        'updated_at',
    ];
}
