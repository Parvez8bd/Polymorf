<?php

use App\Http\Controllers\InsertController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\TeacherController;
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

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/insert_data', function () );
Route::get('/insert_data', [InsertController::class, 'create'])->name('insert');
Route::post('/create_data', [InsertController::class, 'store'])->name('store');
Route::post('/create', [InsertController::class, 'storeTeacher'])->name('storeTeacher');
Route::get('/view_data', [InsertController::class, 'view'])->name('view');
Route::get('/view_student', [StudentController::class, 'view'])->name('studentView');
Route::get('/view_teacher', [TeacherController::class, 'view'])->name('teacherView');
