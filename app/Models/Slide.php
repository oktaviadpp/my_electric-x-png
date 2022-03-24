<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slide extends Model
{
    use HasFactory;
    protected $connection = 'mysql2';
    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'image', 'title', 'content'
    ];
}
