<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Business_phone extends Model
{
    use HasFactory;

    protected $table = 'business_phone';

    protected $fillable = [
        'business_phone_id' ,'phone_number_id','business_details_id'
    ];
}
