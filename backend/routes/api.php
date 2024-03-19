<?php

use App\Http\Controllers\Api\NoteController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('notes', [NoteController::class, 'index']);
Route::post('notes', [NoteController::class, 'store']);
Route::get('notes/{id}', [NoteController::class, 'show']);
Route::get('notes/{id}/edit', [NoteController::class, 'edit']);
Route::put('notes/{id}/edit', [NoteController::class, 'update']);
Route::delete('notes/{id}/delete', [NoteController::class, 'destroy']);
Route::get('notes/{id}/print', [NoteController::class, 'notePrint']);




