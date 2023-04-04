<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\TaskController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [HomeController::class, 'index']);
Route::get('/tasks/data/create', [TaskController::class, 'create']);
Route::get('/tasks/{id}/edit', [TaskController::class, 'edit']);
Route::get('/tasks', [TaskController::class, 'index']);
Route::get('/tasks/{id}', [TaskController::class, 'show']);
//Memasukkan data
Route::post('/tasks', [TaskController::class, 'store']);
//Mengupdate data
Route::put('/tasks/{id}', [TaskController::class, 'update']);
//DELETE
Route::delete('/tasks/{id}', [TaskController::class, 'destroy']);