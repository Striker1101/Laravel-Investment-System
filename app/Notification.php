<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    // use HasFactory;

    protected $table = 'notification';

    protected $fillable = [
        'content',
        'status',
        'gene',
        'type',
        'icon',
        'user_id',
        'tag',
        'title'
    ];

    public function attachments()
    {
        return $this->hasMany(Attachment::class, 'notify_id');
    }


    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
