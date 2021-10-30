<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    use HasFactory;
    protected $fillable =[
        'name','Phone','email'
        ];

    public function subjects(){
        return $this->morphToMany(Subject::class,'courseable');
    }
}
