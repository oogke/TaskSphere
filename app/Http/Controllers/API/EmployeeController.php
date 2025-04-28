<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\userVerifQueue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class EmployeeController extends BaseController
{
    public function index()
    {
        $users = User::all();
        return $this->sendResponse($users,"All users");

    }
public function EmployeeRegisterData(Request $request)
{
    $userApplication = userVerifQueue::all();
    // dd($userApplication->toArray());
    return view('admin/RegisterApplication/index', compact('userApplication'));
    
}
public function EmployeeData(Request $request)
{
    $users = User::all();
    return view('projectManager/employees', compact('users'));
    
}
public function ScodeOperation(Request $request)
{
    $validateData = Validator::make(
        $request->all(),
        [
            'scode' => 'required',
            'role'=>'required'
        ]
    );
    if ($validateData->fails()) {
        return $this->sendError("Validation Error", $validateData->errors()->all(), 307);
    }
    $applicationId=$request->input('applicationId');
    $scode=$request->input('scode');
    $role=$request->input('role');
  $userApplication= userVerifQueue::where('id',$applicationId)->first();

  $user = User::create([
    'fname'=>$userApplication['fname'],
    'lname'=>$userApplication['lname'],
    'email'=>$userApplication['email'],
    'phone'=>$userApplication['phone'],
    'password'=>$userApplication['password'],
    'scode'=> $scode,
    'role'=>$role
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
public function rejection(Request $request)
{

$applicationID= $request->input('applicationId');
$user = userVerifQueue::where('id',$applicationID)->delete();
if($user)
{
    return $this->sendResponse([],"User is removed from apllications");
}


}
}
