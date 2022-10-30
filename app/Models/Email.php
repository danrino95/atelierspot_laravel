<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Email extends Model
{
    use HasFactory;

    protected $table = 'emails';

    protected $fillable = [
        'emails_id' ,'email', 'email_type', 'email_priority'
    ];
}
