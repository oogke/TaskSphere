<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Forum extends Model
{
    protected $fillable=[
        'fullname','role','content','profile','employeeId'];
}
