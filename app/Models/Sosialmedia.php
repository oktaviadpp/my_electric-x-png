<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sosialmedia extends Model
{
    use HasFactory;
    protected $connection = 'mysql2';
    protected $fillable = [
        'medsos', 'icon', 'link'
    ];
}
