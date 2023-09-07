<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Information extends Model
{
    use HasFactory;

    protected $table = 'information';

    protected $guarded = [];

    public function customer(){
        return $this->hasOne(\App\models\Customer::class, 'id', 'customer_id');
    }
    public function user(){
        return $this->hasOne(\App\models\User::class, 'id', 'user_id');
    }
    public function group(){
        return $this->hasOne(\App\models\Categories::class, 'id', 'id_group');
    }
}
