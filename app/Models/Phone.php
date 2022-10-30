<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Phone extends Model
{
    use HasFactory;

    protected $table = 'phone_numbers';

    protected $fillable = [
        'phone_number_id' ,'phone_number','phone_country_code', 'phone_number_type', 'phone_number_priority'
    ];
}
