<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Plan extends Model
{
    protected $table = 'plans';

    protected $fillable = ['name', 'amount', 'minimum', 'image', 'maximum', 'time', 'percent', 'compound_id', 'status'];

    public function compound()
    {
        return $this->belongsTo(Compound::class, 'compound_id');
    }

    public function users()
    {
        return $this->hasMany(User::class);
    }
}
