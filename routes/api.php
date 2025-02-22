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

Route::get('/taskIndex',[TaskController::class,'index'])->name('taskIndex');
Route::get('/workspaceIndex',[WorkspaceController::class,'index'])->name('workspaceIndex');
Route::get('/projectIndex',[ProjectController::class,'index'])->name('projectIndex');
Route::get('/companyIndex',[CompanyController::class,'index'])->name('companyIndex');

Route::post('/taskCreate',[TaskController::class,'store'])->name('taskCreate');
Route::post('/workspaceCreate',[WorkspaceController::class,'store'])->name('workspaceCreate');
Route::post('/projectCreate',[ProjectController::class,'store'])->name('projectCreate');
Route::post('/companyCreate',[CompanyController::class,'store'])->name('companyCreate');

Route::get('/taskUpdate',[TaskController::class,'update'])->name('taskUpdate');
Route::get('/workspaceUpdate',[WorkspaceController::class,'update'])->name('workspaceUpdate');
Route::get('/projectUpdate',[ProjectController::class,'update'])->name('projectUpdate');
Route::get('/companyUpdate',[CompanyController::class,'update'])->name('companyUpdate');

Route::get('/taskDelete',[TaskController::class,'delete'])->name('taskDelete');
Route::get('/workspaceDelete',[WorkspaceController::class,'delete'])->name('workspaceDelete');
Route::get('/projectDelete',[ProjectController::class,'delete'])->name('projectDelete');
Route::get('/companyDelete',[CompanyController::class,'delete'])->name('companyDelete');


Route::get('/workspaceView' ,[WorkspaceController::class,'workspaceView'])->name('workspaceView');
Route::get('/projectView' ,[ProjectController::class,'projectView'])->name('projectView');
Route::get('/taskView' ,[TaskController::class,'taskView'])->name('taskView');


Route::post('/workspaceDashCon/{id}' ,[WorkspaceController::class,'workspaceDash'])->name('workspaceDashCon');
Route::post('/projectDashCon/{id}' ,[ProjectController::class,'projectDash'])->name('projectDashCon');
Route::post('/taskDashCon/{id}' ,[TaskController::class,'taskDash'])->name('taskDashCon');

Route::view('/taskDash/{project}' ,'projectManager/projects/projectDash')->name('projectDash');


Route::get('/projectCreateView',[ProjectController::class,'projectCreateView'])->name('projectCreateView');
Route::get('/workspaceCreateView',[WorkspaceController::class,'workspaceCreateView'])->name('workspaceCreateView');
Route::get('/taskCreateView',[TaskController::class,'taskCreateView'])->name('taskCreateView');

Route::post('/projectUpdateView',[ProjectController::class,'projectUpdateView'])->name('projectUpdateView');
Route::post('/workspaceUpdateView',[WorkspaceController::class,'workspaceUpdateView'])->name('workspaceUpdateView');
Route::post('/taskUpdateView',[TaskController::class,'taskUpdateView'])->name('taskUpdateView');