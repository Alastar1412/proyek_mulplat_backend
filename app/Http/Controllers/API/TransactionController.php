<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Transaction;
use App\Models\TransactionItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TransactionController extends Controller
{
    public function all(Request $req){
        $id = $req->input('id');
        $limit = $req->input('limit');
        $status = $req->input('status');

        //search kalau masukin id
        if($id){
            $transaction = Transaction::with(['items.product'])->find($id);

            //kalau data ketemu
            if($transaction){
                return ResponseFormatter::success(
                    $transaction,
                    'Data transaksi berhasil diambil'
                );
            }
            else{
                return ResponseFormatter::error(
                    null,
                    'Data transaksi tidak ada',
                    404
                );
            }
        }

        $transaction = Transaction::with(['items.product'])->where('users_id',Auth::user()->id);

        //search pakai status
        if($status){
            $transaction->where('status',$status);
        }

        return ResponseFormatter::success(
            $transaction->paginate($limit),
            'Data transaksi berhasil diambil'
        );
    }

    public function checkout(Request $req){
        $req->validate([
            'items'=>['required','array'],
            'items.*.id'=> 'exists:products,id',
            'total_price'=>'required',
            'shipping_price'=>'required',
            'status'=>'required|in:PENDING,SUCCESS,CANCELED,FAILED,SHIPPING,SHIPPED'
        ]);

        $trans = Transaction::create([
            'users_id' => Auth::user()->id,
            'address' => $req->address,
            'total_price' => $req->total_price,
            'shipping_price' => $req->shipping_price,
            'status' => $req->status,
        ]);

        foreach($req->items as $product){
            TransactionItem::create([
                'users_id'=>Auth::user()->id,
                'products_id'=>$product['id'],
                'transactions_id'=>$trans->id,
                'quantity'=>$product['quantity'],
            ]);
        }

        return ResponseFormatter::success($trans->load('items.product'),'Transaksi berhasil');
    }
}
