<?php

namespace Database\Seeders;

use App\Models\TransactionItem;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TransactionItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement("SET FOREIGN_KEY_CHECKS=0");
        DB::table("transaction_items")->truncate();
        DB::statement("SET FOREIGN_KEY_CHECKS=1");
        DB::table('transaction_items')->insert([
            [
                'id' => 1,
                'users_id' => 2,
                'products_id' => 1,
                'transactions_id' => 1,
                'quantity' => 2,
                'created_at' => '2021-04-15 02:11:14',
                'updated_at' => '2021-04-15 02:11:14',
            ],
            [
                'id' => 2,
                'users_id' => 2,
                'products_id' => 2,
                'transactions_id' => 1,
                'quantity' => 2,
                'created_at' => '2021-04-15 02:11:14',
                'updated_at' => '2021-04-15 02:11:14',
            ],
            [
                'id' => 3,
                'users_id' => 2,
                'products_id' => 3,
                'transactions_id' => 1,
                'quantity' => 2,
                'created_at' => '2021-04-15 02:11:14',
                'updated_at' => '2021-04-15 02:11:14',
            ],
            [
                'id' => 4,
                'users_id' => 2,
                'products_id' => 1,
                'transactions_id' => 2,
                'quantity' => 2,
                'created_at' => '2021-04-15 02:30:45',
                'updated_at' => '2021-04-15 02:30:45',
            ],
            [
                'id' => 5,
                'users_id' => 2,
                'products_id' => 2,
                'transactions_id' => 2,
                'quantity' => 2,
                'created_at' => '2021-04-15 02:30:45',
                'updated_at' => '2021-04-15 02:30:45',
            ],
            [
                'id' => 6,
                'users_id' => 2,
                'products_id' => 3,
                'transactions_id' => 2,
                'quantity' => 2,
                'created_at' => '2021-04-15 02:30:45',
                'updated_at' => '2021-04-15 02:30:45',
            ],
            [
                'id' => 7,
                'users_id' => 2,
                'products_id' => 1,
                'transactions_id' => 3,
                'quantity' => 2,
                'created_at' => '2021-04-15 02:32:37',
                'updated_at' => '2021-04-15 02:32:37',
            ],
            [
                'id' => 8,
                'users_id' => 3,
                'products_id' => 5,
                'transactions_id' => 4,
                'quantity' => 1,
                'created_at' => '2021-05-05 04:53:30',
                'updated_at' => '2021-05-05 04:53:30',
            ],
            [
                'id' => 9,
                'users_id' => 3,
                'products_id' => 1,
                'transactions_id' => 5,
                'quantity' => 1,
                'created_at' => '2021-05-05 04:54:07',
                'updated_at' => '2021-05-05 04:54:07',
            ],
            [
                'id' => 10,
                'users_id' => 3,
                'products_id' => 2,
                'transactions_id' => 6,
                'quantity' => 1,
                'created_at' => '2021-05-05 05:19:05',
                'updated_at' => '2021-05-05 05:19:05',
            ],
            [
                'id' => 11,
                'users_id' => 3,
                'products_id' => 6,
                'transactions_id' => 7,
                'quantity' => 1,
                'created_at' => '2021-05-05 05:44:39',
                'updated_at' => '2021-05-05 05:44:39',
            ],
            [
                'id' => 12,
                'users_id' => 3,
                'products_id' => 3,
                'transactions_id' => 7,
                'quantity' => 1,
                'created_at' => '2021-05-05 05:44:39',
                'updated_at' => '2021-05-05 05:44:39',
            ],
            [
                'id' => 13,
                'users_id' => 3,
                'products_id' => 2,
                'transactions_id' => 8,
                'quantity' => 1,
                'created_at' => '2021-05-05 05:48:44',
                'updated_at' => '2021-05-05 05:48:44',
            ],
            [
                'id' => 14,
                'users_id' => 8,
                'products_id' => 1,
                'transactions_id' => 9,
                'quantity' => 2,
                'created_at' => '2023-06-09 12:30:45',
                'updated_at' => '2023-06-09 12:30:45',
            ],
            [
                'id' => 15,
                'users_id' => 8,
                'products_id' => 2,
                'transactions_id' => 9,
                'quantity' => 2,
                'created_at' => '2023-06-09 12:30:45',
                'updated_at' => '2023-06-09 12:30:45',
            ],
            [
                'id' => 16,
                'users_id' => 8,
                'products_id' => 3,
                'transactions_id' => 9,
                'quantity' => 2,
                'created_at' => '2023-06-09 12:30:45',
                'updated_at' => '2023-06-09 12:30:45',
            ],
            [
                'id' => 17,
                'users_id' => 10,
                'products_id' => 1,
                'transactions_id' => 10,
                'quantity' => 2,
                'created_at' => '2023-06-09 13:37:07',
                'updated_at' => '2023-06-09 13:37:07',
            ],
            [
                'id' => 18,
                'users_id' => 10,
                'products_id' => 2,
                'transactions_id' => 10,
                'quantity' => 2,
                'created_at' => '2023-06-09 13:37:07',
                'updated_at' => '2023-06-09 13:37:07',
            ],
            [
                'id' => 19,
                'users_id' => 10,
                'products_id' => 3,
                'transactions_id' => 10,
                'quantity' => 2,
                'created_at' => '2023-06-09 13:37:07',
                'updated_at' => '2023-06-09 13:37:07',
            ],
        ]);
    }
}
