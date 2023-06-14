<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductGallerySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement("SET FOREIGN_KEY_CHECKS=0");
        DB::table("product_galleries")->truncate();
        DB::statement("SET FOREIGN_KEY_CHECKS=1");
        $data = [];
        for ($i=1; $i < 21; $i++) {
            $dataNow = [
                'id' => $i,
                'products_id' => $i,
                'url' => 'https://upload.wikimedia.org/wikipedia/en/b/bd/Doraemon_character.png',
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:30:43',
                'updated_at' => '2021-04-15 10:30:43',
            ];
            array_push($data,$dataNow);
        }
        DB::table('product_galleries')->insert($data);

    }
}
