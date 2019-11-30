<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();
Route::get('/', 'StaffController@index');
Route::post('disable/{id}', 'StaffController@disable');
Route::post('enable/{id}', 'StaffController@enable');
Route::get('edit-staff/{id}/edit', 'StaffController@edit');
Route::post('staff-update/{id}', 'StaffController@update');
Route::post('search-result', 'StaffController@search');

Route::get('/home', 'HomeController@index')->name('home');
