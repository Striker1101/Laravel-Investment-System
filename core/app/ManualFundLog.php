<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ManualFundLog extends Model
{
    protected $table = 'manual_fund_logs';

    protected $fillable = ['user_id', 'amount', 'trans_id', 'charge', 'total', 'transaction_id', 'type'];

    public function method()
    {
        return $this->belongsTo(ManualBank::class, 'trans_id');
    }

    public function method2()
    {
        return $this->belongsTo(ManualCrypto::class, 'trans_id');
    }

    public function user()
    {
        return $this->belongsTo(user::class, 'user_id');
    }


}
