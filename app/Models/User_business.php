<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User_business extends Model
{
    use HasFactory;

    protected $table = 'user_business';

    protected $fillable = [
        'user_business_id' ,'user_id','business_details_id'
    ];
}
