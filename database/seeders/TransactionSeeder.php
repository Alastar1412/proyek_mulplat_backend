<?php

namespace Database\Seeders;

use App\Models\Transaction;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TransactionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement("SET FOREIGN_KEY_CHECKS=0");
        DB::table("transactions")->truncate();
        DB::statement("SET FOREIGN_KEY_CHECKS=1");
        DB::table('transactions')->insert([
            [
                'id' => 1,
                'users_id' => 8,
                'address' => 'Kota Cimahi',
                'total_price' => 2000.00,
                'shipping_price' => 100.00,
                'status' => 'SUCCESS',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 02:11:14',
                'updated_at' => '2021-04-15 02:11:52',
            ],
            [
                'id' => 2,
                'users_id' => 2,
                'address' => 'Kota Cimahi',
                'total_price' => 2000.00,
                'shipping_price' => 100.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 02:30:45',
                'updated_at' => '2021-04-15 02:30:45',
            ],
            [
                'id' => 3,
                'users_id' => 2,
                'address' => 'Kota Cimahi',
                'total_price' => 2000.00,
                'shipping_price' => 100.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2021-04-15 02:32:37',
                'updated_at' => '2021-04-15 02:32:37',
            ],
            [
                'id' => 4,
                'users_id' => 3,
                'address' => 'Marsemoon',
                'total_price' => 206.00,
                'shipping_price' => 0.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2021-05-05 04:53:30',
                'updated_at' => '2021-05-05 04:53:30',
            ],
            [
                'id' => 5,
                'users_id' => 3,
                'address' => 'Marsemoon',
                'total_price' => 200.00,
                'shipping_price' => 0.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2021-05-05 04:54:07',
                'updated_at' => '2021-05-05 04:54:07',
            ],
            [
                'id' => 6,
                'users_id' => 8,
                'address' => 'Marsemoon',
                'total_price' => 285.00,
                'shipping_price' => 0.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2021-05-05 05:19:05',
                'updated_at' => '2021-05-05 05:19:05',
            ],
            [
                'id' => 7,
                'users_id' => 3,
                'address' => 'Marsemoon',
                'total_price' => 215.00,
                'shipping_price' => 0.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2021-05-05 05:44:39',
                'updated_at' => '2021-05-05 05:44:39',
            ],
            [
                'id' => 8,
                'users_id' => 3,
                'address' => 'Marsemoon',
                'total_price' => 285.00,
                'shipping_price' => 0.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2021-05-05 05:48:44',
                'updated_at' => '2021-05-05 05:48:44',
            ],
            [
                'id' => 9,
                'users_id' => 8,
                'address' => 'Kota A',
                'total_price' => 2000.00,
                'shipping_price' => 1000.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2023-06-09 12:30:45',
                'updated_at' => '2023-06-09 12:30:45',
            ],
            [
                'id' => 10,
                'users_id' => 10,
                'address' => 'Kota A',
                'total_price' => 2000.00,
                'shipping_price' => 1000.00,
                'status' => 'PENDING',
                'payment' => 'MANUAL',
                'deleted_at' => NULL,
                'created_at' => '2023-06-09 13:37:07',
                'updated_at' => '2023-06-09 13:37:07',
            ],
        ]);
    }
}
