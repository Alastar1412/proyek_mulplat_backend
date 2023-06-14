<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Transaction;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        $this->call([UserSeeder::class]);
        $this->call([ProductSeeder::class]);
        $this->call([ProductCategorySeeder::class]);
        $this->call([TransactionSeeder::class]);
        $this->call([TransactionItemSeeder::class]);
        $this->call([ProductGallerySeeder::class]);
    }
}
