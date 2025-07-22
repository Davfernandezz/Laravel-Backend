<?php

namespace App\Exceptions;

use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Validation\ValidationException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Throwable;

class Handler extends ExceptionHandler
{
    protected $dontReport = [];

    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    public function register(): void
    {
        //
    }

    public function render($request, Throwable $exception)
    {
        if ($request->is('api/*') || $request->expectsJson()) {

            if ($exception instanceof ModelNotFoundException) {
                return response()->json(['message' => 'Recurso no encontrado'], 404);
            }

            if ($exception instanceof NotFoundHttpException) {
                return response()->json(['message' => 'Ruta no encontrada'], 404);
            }

            if ($exception instanceof AuthorizationException) {
                return response()->json(['message' => 'No autorizado'], 403);
            }

            if ($exception instanceof ValidationException) {
                return response()->json([
                    'message' => 'Error de validación',
                    'errors' => $exception->errors(),
                ], 422);
            }

            return response()->json(['message' => 'Error interno del servidor'], 500);
        }

        return parent::render($request, $exception);
    }
}
