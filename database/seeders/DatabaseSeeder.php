<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{

    public function run()
    {
    \App\Models\Category::factory(6)->create();
    \App\Models\Product::factory(22)->create();
    }
}
