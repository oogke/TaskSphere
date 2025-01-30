<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\userVerifQueue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class EmployeeController extends BaseController
{
public function EmployeeData(Request $request)
{
    $userApplication = userVerifQueue::all();
    // dd($userApplication->toArray());
    return view('admin/RegisterApplication/index', compact('userApplication'));
    
}
public function ScodeOperation(Request $request)
{
    $validateData = Validator::make(
        $request->all(),
        [
            'scode' => 'required',
        ]
    );
    if ($validateData->fails()) {
        return $this->sendError("Validation Error", $validateData->errors()->all(), 307);
    }
    $applicationId=$request->input('applicationId');
    $scode=$request->input('scode');
  $userApplication= userVerifQueue::where('id',$applicationId)->first();

  $user = User::create([
    'fname'=>$userApplication['fname'],
    'lname'=>$userApplication['lname'],
    'email'=>$userApplication['email'],
    'phone'=>$userApplication['phone'],
    'password'=>$userApplication['password'],
    'scode'=> $scode
  ]);
  return $this->sendResponse($user, 'user registered successfully');

}

public function removeData(Request $request)
{
    $applicationId= $request->input('applicationId');
    $user= userVerifQueue::where("id",$applicationId)->delete();
    if($user)
    {
        return $this->sendResponse([], 'user deleted Successfully');
    }
}
}
