<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class listings extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'listing_name',
    ];
}
