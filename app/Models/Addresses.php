<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Addresses extends Model
{
    use HasFactory;

    protected $table = 'addresses';

    protected $fillable = [
        'id' ,'address_line_1','address_line_2', 'address_city', 'address_district','address_state','address_country','address_pincode', 'address_type_id'
    ];
}
