<?php

namespace App;

use App\Attachment;
use App\Trade;
use App\Notification;
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
        return $this->belongsToMany(DefaultStock::class, 'stocks', 'user_id', 'stock_id')
            ->withPivot('amount', 'status', 'created_at', 'updated_at');
    }

    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }

    public function attachments()
    {
        return $this->hasManyThrough(Attachment::class, Notification::class, 'user_id', 'notify_id', 'id', 'id');
    }

    public function notification()
    {
        return $this->hasMany(Notification::class, 'user_id');
    }
    public function trades()
    {
        return $this->hasMany(Trade::class);
    }

}


