<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Business_emails extends Model
{
    use HasFactory;

    protected $table = 'business_emails';

    protected $fillable = [
        'business_emails_id' ,'email_id','business_details_id'
    ];
}
