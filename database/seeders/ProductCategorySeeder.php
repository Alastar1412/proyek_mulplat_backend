<?php

namespace Database\Seeders;

use App\Models\ProductCategory;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement("SET FOREIGN_KEY_CHECKS=0");
        DB::table("product_categories")->truncate();
        DB::statement("SET FOREIGN_KEY_CHECKS=1");
        DB::table('product_categories')->insert([
            [
                'id' => 1,
                'name' => 'Sport',
                'deleted_at' => null,
                'created_at' => '2021-04-15 02:15:27',
                'updated_at' => '2021-04-15 02:15:27',
            ],
            [
                'id' => 2,
                'name' => 'Hiking',
                'deleted_at' => null,
                'created_at' => '2021-04-15 02:15:33',
                'updated_at' => '2021-04-15 02:15:33',
            ],
            [
                'id' => 3,
                'name' => 'Basketball',
                'deleted_at' => null,
                'created_at' => '2021-04-15 10:09:12',
                'updated_at' => '2021-04-15 10:09:12',
            ],
            [
                'id' => 4,
                'name' => 'Training',
                'deleted_at' => null,
                'created_at' => '2021-04-15 10:12:34',
                'updated_at' => '2021-04-15 10:21:21',
            ],
            [
                'id' => 5,
                'name' => 'Running',
                'deleted_at' => null,
                'created_at' => '2021-04-15 10:12:44',
                'updated_at' => '2021-04-15 10:12:44',
            ],
            [
                'id' => 6,
                'name' => 'All Shoes',
                'deleted_at' => null,
                'created_at' => '2021-04-15 10:14:25',
                'updated_at' => '2021-04-15 10:14:25',
            ],
        ]);
    }
}
