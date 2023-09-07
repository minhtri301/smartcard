<?php

namespace App\Models;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Customer extends Authenticatable
{
    use HasFactory, Sluggable, HasRoles;

    protected $table = 'customer';

    protected $fillable = [
        'name',
        'user_name',
        'password',
        'group_id',
        'date',
        'login_code',
        'login_link',
        'slug','image','image_cover','name','phone','title','status','check','meta_title'
    ];

    // protected $guarded = [];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'user_name'
            ]
        ];
    }

    public function group(){
        return $this->hasOne(\App\Models\Group::class, 'id', 'group_id');
    }
    
}
