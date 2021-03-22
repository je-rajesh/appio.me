<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class createapp extends Model
{
    protected $table = 'createapp';
    public $primaryKey = 'id';
    public $timestamps = 'true';
    use HasFactory;

    public function user()
    {
        return $this->belongsTo('App\Models\User');
     }
    
}
