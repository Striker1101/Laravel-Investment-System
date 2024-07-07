<?php

namespace App;

use App\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    // use HasFactory;

    protected $fillable = [
        'user_id',
        'title',
        'content',
        'status',
        'percent',
        'created_at',
        'updated_at'
    ];

    // Define the relationship with the User model
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
