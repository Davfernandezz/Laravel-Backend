<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class BookTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Verifica que un usuario autenticado pueda acceder al listado de libros.
     */
    public function test_authenticated_user_can_access_books_endpoint(): void
    {
        // Crear un usuario ficticio
        $user = User::factory()->create();

        // Simular petición autenticada a /api/books
        $response = $this->actingAs($user)->getJson('/api/books');

        // Verificar que responde con HTTP 200 y formato JSON
        $response->assertStatus(200)
                 ->assertHeader('Content-Type', 'application/json');
    }

    /**
     * Verifica que un usuario autenticado pueda crear un libro correctamente.
     */
    public function test_authenticated_user_can_create_a_book(): void
    {
        $user = User::factory()->create();

        $payload = [
            'title' => 'The Hobbit',
            'description' => 'A fantasy novel',
            'author' => 'J.R.R. Tolkien',
            'category_id' => \App\Models\Category::factory()->create()->id,
        ];

        $response = $this->actingAs($user)->postJson('/api/books', $payload);

        $response->assertStatus(201)
                 ->assertJsonFragment(['title' => 'The Hobbit']);
    }
}
