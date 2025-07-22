<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        User::truncate();

        User::create([
            'name' => 'David',
            'email' => 'david@example.com',
            'password' => Hash::make('password'), 
        ]);

        User::factory()->count(9)->create();
    }
}