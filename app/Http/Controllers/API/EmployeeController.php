<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\userVerifQueue;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
public function EmployeeData(Request $request)
{
    $userApplication = userVerifQueue::all();
    // dd($userApplication->toArray());
    return view('admin/RegisterApplication/index', compact('userApplication'));
    
}
}
