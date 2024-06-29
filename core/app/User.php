<?php

namespace App;

use Illuminate\Support\Facades\Session;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;



class User extends Authenticatable
{
    use Notifiable;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'phone',
        'address',
        'country',
        'zip',
        'under_reference',
        'password',
        'verifyToken',
        'reference',
        'status',
        'image',
        'ID_Number', // Add the new column here
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    public function letters()
    {
        return $this->belongsToMany('App\Letter');
    }
    public function profits()
    {
        return $this->hasMany(Profit::class);
    }
    public function stocks()
    {
        return $this->hasMany(Stock::class);
    }

    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }
}


