<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Wallet extends Model
{
    //
    protected $fillable = ['name', 'network', 'image', 'is_active'];

    public function userWallets()
    {
        return $this->hasMany(UserWallet::class);
    }
}
