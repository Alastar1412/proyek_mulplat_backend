<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    //API untuk ambil data (getAll,getOne,dsb)
    public function all(Request $req){
        $id = $req->input('id');
        $limit = $req->input('limit');
        $name = $req->input('name');
        $description = $req->input('description');
        $tags = $req->input('tags');
        $categories = $req->input('categories');
        $price_from = $req->input('price_from');
        $price_to = $req->input('price_to');

        //search kalau masukin id
        if($id){
            $product = Product::with(['category','galleries'])->find($id);

            //kalau data ketemu
            if($product){
                return ResponseFormatter::success(
                    $product,
                    'Data product berhasil diambil'
                );
            }
            else{
                return ResponseFormatter::error(
                    null,
                    'Data product tidak ada',
                    404
                );
            }
        }

        $product = Product::with(['category','galleries']);

        //search pakai nama
        if($name){
            $product->where('name','like','%'.$name.'%');
        }
        //search pakai desc
        if($description){
            $product->where('description','like','%'.$description.'%');
        }
        //search pakai tags
        if($tags){
            $product->where('tags','like','%'.$tags.'%');
        }

        //filter
        if($price_from){
            $product->where('price','>=',$price_from);
        }
        if($price_to){
            $product->where('price','<=',$price_to);
        }
        if($categories){
            $product->where('categories',$categories);
        }

        return ResponseFormatter::success(
            $product->paginate($limit),
            'Data product berhasil diambil'
        );
    }
}
