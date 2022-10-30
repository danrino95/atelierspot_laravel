<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address_business extends Model
{
    use HasFactory;

    protected $table = 'address_business';

    protected $fillable = [
        'address_id' ,'address_business_id','business_details_id'
    ];
}
