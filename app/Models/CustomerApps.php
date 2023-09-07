<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerApps extends Model
{
    use HasFactory;
    
    protected $table = 'customer_apps';

    protected $guarded = [];

    public function app(){

        return $this->hasOne(\App\Models\Apps::class, 'id', 'app_id');

    }

    public function customer(){

        return $this->hasOne(\App\Models\Customer::class, 'id', 'customer_id');

    }
}
