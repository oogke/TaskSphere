<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Laravel\Sanctum\HasApiTokens;

class userVerifQueue extends Model
{
    use HasFactory;
    use HasApiTokens;


}
