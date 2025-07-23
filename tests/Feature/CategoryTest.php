<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class CategoryTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Verifica que un usuario autenticado pueda acceder al listado de categorías.
     */
    public function test_authenticated_user_can_access_categories_endpoint(): void
    {
        $user = User::factory()->create();

        $response = $this->actingAs($user)->getJson('/api/categories');

        $response->assertStatus(200)
                 ->assertHeader('Content-Type', 'application/json');
    }

    /**
     * Verifica que un usuario autenticado pueda crear una categoría correctamente.
     */
    public function test_authenticated_user_can_create_category(): void
    {
        $user = User::factory()->create();

        $payload = ['name' => 'Fantasy'];

        $response = $this->actingAs($user)->postJson('/api/categories', $payload);

        $response->assertStatus(201)
                 ->assertJsonFragment(['name' => 'Fantasy']);
    }
}
