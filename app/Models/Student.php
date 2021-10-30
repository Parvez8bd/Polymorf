<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $fillable =[
    'name','class','email','phone'
    ];

    public function subjects(){
        return $this->morphToMany(Subject::class,'courseable');
    }
}
