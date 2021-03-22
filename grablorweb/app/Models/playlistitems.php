<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class playlistitems extends Model
{
    protected $table = 'playlistitems';
    public $primaryKey = 'id';
    public $timestamps = 'true';
    use HasFactory;
}
