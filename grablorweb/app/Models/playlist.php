<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class playlist extends Model
{
    protected $table = 'playlist_db';
    public $primaryKey = 'id';
    public $timestamps = 'true';
    use HasFactory;
}
