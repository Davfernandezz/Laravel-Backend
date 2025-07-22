<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    public function run(): void
    {
        $categories = [
            'Ficción',
            'No Ficción',
            'Ciencia Ficción',
            'Fantasía',
            'Historia',
            'Biografía',
            'Ciencia',
            'Tecnología',
            'Salud',
            'Negocios'
        ];

        foreach ($categories as $name) {
            Category::create(['name' => $name]);
        }
    }
}
