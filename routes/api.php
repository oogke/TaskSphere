<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\CompanyController;
use App\Http\Controllers\API\EmployeeController;
use App\Http\Controllers\API\ProjectController;
use App\Http\Controllers\API\TaskController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\WorkspaceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('/register',[AuthController::class,'signup'])->name('register');
Route::post('/emailverify', [AuthController::class,'emailVerify'])->name('registerVerify');
Route::post('/login',[AuthController::class,'login'])->name('login');
Route::get('/RegisterApplication',[EmployeeController::class,'EmployeeRegisterData'])->name('RegisterApplication');
Route::post('/passScode',[EmployeeController::class,'ScodeOperation'])->name('PassScode');
Route::post('/removeData',[EmployeeController::class,'removeData'])->name('removeData');
Route::post('/rejection',[EmployeeController::class,'rejection'])->name('rejection');

Route::get("/userIndex",[UserController::class,'index'])->name("getUserData");
Route::get('/employeedata',[EmployeeController::class,'EmployeeData'])->name('EmployeeData');

Route::get('/taskview',[TaskController::class,'taskView'])->name('taskview');
Route::get('/projectview',[TaskController::class,'projectView'])->name('projectview');


Route::get('/taskIndex',[TaskController::class,'index'])->name('taskIndex');
Route::get('/workspaceIndex',[WorkspaceController::class,'index'])->name('workspaceIndex');
Route::get('/projectIndex',[ProjectController::class,'index'])->name('projectIndex');
Route::get('/companyIndex',[CompanyController::class,'index'])->name('companyIndex');