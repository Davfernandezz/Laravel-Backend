<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Http\Requests\StoreBookRequest;

class BookController extends Controller
{
    public function index()
    {
        return Book::with('category')->get();
    }

    public function store(StoreBookRequest $request)
    {
        $book = Book::create($request->validated());
        return response()->json($book, 201);
    }

    public function show(Book $book)
    {
        return $book->load('category');
    }

    public function update(StoreBookRequest $request, Book $book)
    {
        $book->update($request->validated());
        return response()->json($book);
    }

    public function destroy(Book $book)
    {
        $book->delete();
        return response()->json(['message' => 'Book deleted']);
    }
}
