<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
});
Route::get('/registerView', function () {
    return view('register');
});
Route::get('/loginView', function () {
    return view('login');
});
Route::get('/animation1', function () {
    return view('animation/animation1');
});

// Route::get('/registerView','register')->name("registerView");
// Route::get('/loginView','login')->name("loginView");