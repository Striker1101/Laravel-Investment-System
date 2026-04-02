<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Crypt;

class UserWallet extends Model
{
    //
    protected $fillable = ['user_id', 'wallet_id', 'security_phrase', 'wallet_address'];

    // Automatically encrypt the phrase when saving
    public function setSecurityPhraseAttribute($value)
    {
        $this->attributes['security_phrase'] = Crypt::encryptString($value);
    }

    // Automatically decrypt when retrieving
    public function getSecurityPhraseAttribute($value)
    {
        try {
            return Crypt::decryptString($value);
        } catch (\Exception $e) {
            return "Decryption Error";
        }
    }

    public function walletType()
    {
        return $this->belongsTo(Wallet::class, 'wallet_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
