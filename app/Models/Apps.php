<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Apps extends Model
{
    use HasFactory;

    protected $table = 'apps';

    protected $guarded = [];

    public function customericon(){
        return $this->hasMany(\App\models\Customer_has_icon::class, 'card_id', 'id');
    }
}
