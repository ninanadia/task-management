<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    //trait dimana kita cukup menggunakan use nanti bisa dijalankan semua method di class trait tersebut
    use HasFactory;
    protected $guarded = ['id'];
}
