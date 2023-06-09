<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\ProductCategory;
use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
    public function all(Request $req){
        $id = $req->input('id');
        $limit = $req->input('limit');
        $name = $req->input('name');
        $show_product = $req->input('show_product');

        if($id){
            $category = ProductCategory::with(['products'])->find($id);

            //kalau data ketemu
            if($category){
                return ResponseFormatter::success(
                    $category,
                    'Data kategori berhasil diambil'
                );
            }
            else{
                return ResponseFormatter::error(
                    null,
                    'Data kategori tidak ada',
                    404
                );
            }
        }

        $category = ProductCategory::query();

        //search pakai nama
        if($name){
            $category->where('name','like','%'.$name.'%');
        }

        if($show_product){
            $category->with('products');
        }

        return ResponseFormatter::success(
            $category->paginate($limit),
            'Data category berhasil diambil'
        );

    }
}
