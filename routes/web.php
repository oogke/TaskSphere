<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
});
Route::get('/registerView', function () {
    return view('register');
})->name('registerView');
Route::get('/loginView', function () {
    return view('login');
})->name('loginView');
Route::get('/admin', function () {
    return view('admin/admin');
})->name('adminPanel');
Route::get('/animation1', function () {
    return view('animation/animation1');
});
Route::get('/pm', function () {
    return view('projectmanager/pm');
})->name('pmPanel');
// Route::get('/registerView','register')->name("registerView");
// Route::get('/loginView','login')->name("loginView");
Route::view('/pmEmployeeData','projectmanager/employees')->name('employeeData');
Route::view('/projectPanel','projectManager/projects/index')->name('projectPanel');


Route::get('/react/user/{any}', function () {
    return view('userDashboard'); // or 'dashboard' or whatever Blade view you're using
})->where('any', '.*');

Route::get('/react/projectManager/{any}', function () {
    return view('projectManager/projectManagerDash'); // or 'dashboard' or whatever Blade view you're using
})->where('any', '.*');

Route::get('/react/admin/{any}', function () {
    return view('admin/adminDash'); // or 'dashboard' or whatever Blade view you're using
})->where('any', '.*');