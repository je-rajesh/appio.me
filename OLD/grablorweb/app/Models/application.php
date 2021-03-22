<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class application extends Model
{ protected $table = 'application';
    public $primaryKey = 'id';
    public $timestamps = 'true';
    use HasFactory;

}
