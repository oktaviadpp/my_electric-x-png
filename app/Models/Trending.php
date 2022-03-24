<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trending extends Model
{
    use HasFactory;
    protected $connection = 'mysql2';
    protected $fillable = [
        'image', 'title', 'content', 'kutipan', 'waktupost'
    ];
}
