<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Importa controladores API
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\BookController;
use App\Http\Controllers\API\CategoryController;

/*
|--------------------------------------------------------------------------
| RUTAS PÚBLICAS (sin autenticación)
|--------------------------------------------------------------------------
*/

// Registro de usuario
Route::post('/register', [AuthController::class, 'register']);

// Login de usuario
Route::post('/login', [AuthController::class, 'login']);

/*
|--------------------------------------------------------------------------
| RUTAS PROTEGIDAS (requieren token Sanctum)
|--------------------------------------------------------------------------
*/
Route::middleware('auth:sanctum')->group(function () {

    // Logout del usuario
    Route::post('/logout', [AuthController::class, 'logout']);

    // Obtener datos del usuario autenticado
    Route::get('/user', function (Request $request) {
        return response()->json([
            'user' => $request->user()
        ]);
    });

    /*
    |--------------------------------------------------------------------------
    | CRUD DE LIBROS
    |--------------------------------------------------------------------------
    | Usa apiResource para: index, store, show, update, destroy
    */
    Route::apiResource('books', BookController::class);

    /*
    |--------------------------------------------------------------------------
    | CRUD DE CATEGORÍAS
    |--------------------------------------------------------------------------
    | Declaración manual para mantenerlo claro y evitar conflictos 
    */
    Route::get('/categories', [CategoryController::class, 'index']);
    Route::post('/categories', [CategoryController::class, 'store']);
    Route::get('/categories/{category}', [CategoryController::class, 'show']);
    Route::put('/categories/{category}', [CategoryController::class, 'update']);
    Route::delete('/categories/{category}', [CategoryController::class, 'destroy']);
});
