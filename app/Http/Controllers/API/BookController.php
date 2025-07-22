<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Http\Requests\StoreBookRequest;

class BookController extends Controller
{
    public function index()
    {
        $books = Book::with('category')->get();
        return response()->json([
            'status' => 'success',
            'count' => $books->count(),
            'data' => $books
        ]);
    }

    public function store(StoreBookRequest $request)
    {
        $book = Book::create($request->validated());
        return response()->json([
            'status' => 'success',
            'message' => 'Book created successfully',
            'data' => $book
        ], 201);
    }

    public function show(Book $book)
    {
        return response()->json([
            'status' => 'success',
            'data' => $book->load('category')
        ]);
    }

    public function update(StoreBookRequest $request, Book $book)
    {
        $book->update($request->validated());
        return response()->json([
            'status' => 'success',
            'message' => 'Book updated successfully',
            'data' => $book
        ]);
    }

    public function destroy(Book $book)
    {
        $id = $book->id;
        $book->delete();
        return response()->json([
            'status' => 'success',
            'message' => 'Book deleted successfully',
            'deleted_id' => $id
        ]);
    }
}