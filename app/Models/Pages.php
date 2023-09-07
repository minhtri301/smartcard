<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pages extends Model
{
    protected $table = 'pages';

    protected $fillable = ['type', 'lang', 'name_page', 'route', 'content', 'image', 'banner',
    'title_h1','meta_title', 'meta_description', 'meta_keyword','meta_schema'];
}
