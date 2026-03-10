<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attachment extends Model
{
    // use HasFactory;

    protected $table = 'attachments';

    protected $fillable = [
        'doc',
        'notify_id',
        'user_id',
        'name',
        'size',
    ];

    public function notification()
    {
        return $this->belongsTo(Notification::class, 'notify_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
