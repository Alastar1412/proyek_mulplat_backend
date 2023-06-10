<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement("SET FOREIGN_KEY_CHECKS=0");
        DB::table("products")->truncate();
        DB::statement("SET FOREIGN_KEY_CHECKS=1");
        DB::table('products')->insert([
            [
                'id' => 1,
                'name' => 'Adidas NMD',
                'price' => 200.00,
                'description' => 'Ini adalah sepatu sport',
                'tags' => NULL,
                'categories_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 02:16:06',
                'updated_at' => '2021-04-15 02:16:06',
            ],
            [
                'id' => 2,
                'name' => 'Ultra 4D 5 Shoes',
                'price' => 285.00,
                'description' => 'When the adidas Ultraboost debuted back in 2015, it had an impact that spilled beyond the world of running. For this version of t...',
                'tags' => NULL,
                'categories_id' => 5,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:17:22',
                'updated_at' => '2021-04-15 10:27:20',
            ],
            [
                'id' => 3,
                'name' => 'SL 20 Shoes',
                'price' => 123.00,
                'description' => 'These adidas SL20 Shoes will back your play. Lightweight cushioning gives you a faster push-off and a snappy feel.',
                'tags' => NULL,
                'categories_id' => 5,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:18:19',
                'updated_at' => '2021-04-15 10:39:03',
            ],
            [
                'id' => 4,
                'name' => 'Ultra 4D 5 Shoes',
                'price' => 285.00,
                'description' => 'When the adidas Ultraboost debuted back in 2015, it had an impact that spilled beyond the world of running.',
                'tags' => NULL,
                'categories_id' => 5,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:18:51',
                'updated_at' => '2021-04-15 10:40:20',
            ],
            [
                'id' => 5,
                'name' => 'Ultraboots 20 Shoes',
                'price' => 206.00,
                'description' => 'Wear your values on your feet with these adidas running shoes. Rocking the wild colours shows you\'re not shy about standing out.',
                'tags' => NULL,
                'categories_id' => 5,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:19:08',
                'updated_at' => '2021-04-15 10:43:19',
            ],
            [
                'id' => 6,
                'name' => 'LEGO® SPORT SHOES',
                'price' => 92.00,
                'description' => 'These shoes keep kids comfortable through playtime, whether that means running around on building universes out of bricks.',
                'tags' => NULL,
                'categories_id' => 4,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:20:03',
                'updated_at' => '2021-05-04 07:33:37',
            ],
            [
                'id' => 7,
                'name' => 'Fortarun Running Shoes 2020',
                'price' => 34.00,
                'description' => 'Whether they\'re headed to school, day care or the playground with friends, send them out in all-day foot support with these adidas.',
                'tags' => NULL,
                'categories_id' => 4,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:21:05',
                'updated_at' => '2021-05-04 07:36:17',
            ],
            [
                'id' => 8,
                'name' => 'Supernove Running Shoes',
                'price' => 83.00,
                'description' => 'Two kinds of cushioning in the midsole give you flexibility and responsiveness right where you need them.',
                'tags' => NULL,
                'categories_id' => 4,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:22:10',
                'updated_at' => '2021-05-04 07:37:14',
            ],
            [
                'id' => 9,
                'name' => 'Faito Summer.RDY Tokyo Shoes',
                'price' => 76.00,
                'description' => 'Whether you\'re running out the front door to log a few miles or want to bring a running-inspired style statement to your everyday.',
                'tags' => NULL,
                'categories_id' => 4,
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 10:22:39',
                'updated_at' => '2021-05-04 07:38:53',
            ],
            [
                'id' => 10,
                'name' => 'DAME 7 SHOES',
                'price' => 125.00,
                'description' => 'Show up in big game style whether you\'re trying out for the team or challenging a friend to some one-on-one in the park.',
                'tags' => NULL,
                'categories_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 07:40:05',
                'updated_at' => '2021-05-04 11:52:12',
            ],
            [
                'id' => 11,
                'name' => 'Pro boots low shoes',
                'price' => 57.00,
                'description' => 'The superlight midsole features an innovative drop-in that provides outstanding energy return every time you plant.',
                'tags' => NULL,
                'categories_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 07:40:30',
                'updated_at' => '2021-05-04 11:55:13',
            ],
            [
                'id' => 12,
                'name' => 'D.O.N ISSUE 2.0 Shoes',
                'price' => 111.00,
                'description' => 'These signature shoes from Mitchell and adidas Basketball feature graphics that highlight the young All-Star\'s style.',
                'tags' => NULL,
                'categories_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:35:31',
                'updated_at' => '2021-05-04 11:56:00',
            ],
            [
                'id' => 13,
                'name' => 'Harden Vol. 4 Shoes',
                'price' => 137.00,
                'description' => 'Most guys are finished by late in the fourth quarter. That\'s when James Harden is just getting started.',
                'tags' => NULL,
                'categories_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:36:51',
                'updated_at' => '2021-05-04 11:56:57',
            ],
            [
                'id' => 14,
                'name' => 'Terrex urban low  Hiking Shoes',
                'price' => 143.00,
                'description' => 'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                'tags' => NULL,
                'categories_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:37:22',
                'updated_at' => '2021-05-04 11:59:49',
            ],
            [
                'id' => 15,
                'name' => 'TERREX EASTRAIL HIKING SHOES',
                'price' => 54.00,
                'description' => 'Built for a stable feel and confident traction on wet, uneven terrain. Stack up the trail miles in these lightweight hiking shoes',
                'tags' => NULL,
                'categories_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:38:04',
                'updated_at' => '2021-05-04 12:10:09',
            ],
            [
                'id' => 16,
                'name' => 'TERREX AX3 HIKING SHOES',
                'price' => 83.00,
                'description' => 'GORE-TEX Upper Mesh and synthetic uppers will encase each foot in durable comfort. Continental Rubber Outs',
                'tags' => NULL,
                'categories_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:38:29',
                'updated_at' => '2021-05-04 12:14:10',
            ],
            [
                'id' => 17,
                'name' => 'TERREX TRAILMAKER HIKING SHOES',
                'price' => 34.00,
                'description' => 'The adidas Terrex Trailmaker Hiking Shoes blend responsive running-shoe design with trail-shoe support.',
                'tags' => NULL,
                'categories_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:38:53',
                'updated_at' => '2021-05-04 12:15:05',
            ],
            [
                'id' => 18,
                'name' => 'Predator 20.4 Turf Boots',
                'price' => 89.00,
                'description' => 'You\'re not cheating the system. You\'re just bending the rules. Find your unfair advantage and transform your game with all-new adi...',
                'tags' => NULL,
                'categories_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:39:30',
                'updated_at' => '2021-05-04 12:18:16',
            ],
            [
                'id' => 19,
                'name' => 'X Ghosted.3 Firm Ground Cleats',
                'price' => 47.00,
                'description' => 'Fast doesn\'t count the seconds. It just chalks up the wins. Speed is hot-wired into your DNA. These soccer cleats have a lightweig...',
                'tags' => NULL,
                'categories_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:39:58',
                'updated_at' => '2021-05-04 12:19:21',
            ],
            [
                'id' => 20,
                'name' => 'X GHOSTED+ FIRM GROUND CLEATS',
                'price' => 72.00,
                'description' => 'Fast doesn\'t count the seconds. It just chalks up the wins. Speed is hot-wired into your DNA.',
                'tags' => NULL,
                'categories_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2021-05-04 11:40:25',
                'updated_at' => '2021-05-04 12:21:09',
            ]
        ]);

    }
}
