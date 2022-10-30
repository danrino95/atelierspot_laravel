<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address_users extends Model
{
    use HasFactory;

    protected $table = 'address_users';

    protected $fillable = [
        'address_id' ,'address_users_id','users_id'
    ];
}
