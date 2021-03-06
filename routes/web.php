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

Route::get('/', function () {
    return view('welcome');
});

/*
Route::get('/tasks', function () {
    return view('tasks.task-page');
});*/

Route::get("/", "TasksController@tasks");
Route::get("/archived", "TasksController@archived");

Route::post("/tasks", "TasksController@forms_process");





/* AJAX */
Route::post("/ajax/get_customer", "TasksController@get_customer");
Route::post("/ajax/auto_complete_customer", "TasksController@auto_complete_customer");
Route::post("/ajax/get_job", "TasksController@get_job");
Route::post("/ajax/sort_jobs_list", "TasksController@sort_jobs_list");
