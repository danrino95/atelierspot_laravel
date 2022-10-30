<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Business extends Model
{
    use HasFactory;

    protected $table = 'business_details';

    protected $fillable = [
        'id' ,'business_name','business_lisence_number', 'business_about', 'business_tagline','business_profile_pic','gov_registered_number'
    ];
}
