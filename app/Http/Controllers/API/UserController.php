<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;
use Laravel\Fortify\Rules\Password;

class UserController extends Controller
{
    public function register(Request $req){
        try{
            $req->validate([
                'name' => ['required','string','max:255'],
                'username' => ['required','string','max:255','unique:users'],
                'email' => ['required','string','email','max:255','unique:users'],
                'phone' => ['nullable','string','max:255'],
                'password' => ['required','string',new Password],
            ]);

            User::create([
                'name' => $req->name,
                'username' => $req->username,
                'email' => $req->email,
                'phone' => $req->phone,
                'password' => Hash::make($req->password),
            ]);

            $user = User::where('email',$req->email)->first();

            $tokenResult = $user->createToken('authToken')->plainTextToken;

            return ResponseFormatter::success([
                'access_token'=> $tokenResult,
                'token_type'=> 'Bearer',
                'user'=>$user
            ],'User Registered');
        } catch(Exception $err){
            return ResponseFormatter::error([
                'message'=> 'Something went wrong',
                'error' => $err
            ],'Authentication Failed',500);
        }
    }

    public function login(Request $req){
        try {
            $req->validate([
                'email' => 'email|required',
                'password' => 'required'
            ]);

            $credentials = request(['email', 'password']);

            if (!Auth::attempt($credentials)) {
                return ResponseFormatter::error([
                    'message' => 'Unauthorized'
                ],'Authentication Failed', 500);
            }

            $user = User::where('email', $req->email)->first();

            if (! Hash::check($req->password, $user->password, [])) {
                throw new \Exception('Invalid Credentials');
            }

            // $user = User::where('email', $req->email)->where('password')->first();

            $tokenResult = $user->createToken('authToken')->plainTextToken;
            return ResponseFormatter::success([
                'access_token' => $tokenResult,
                'token_type' => 'Bearer',
                'user' => $user
            ],'Authenticated');
        } catch (Exception $error) {
            return ResponseFormatter::error([
                'message' => 'Something went wrong',
                'error' => $error->getMessage(),
            ],'Authentication Failed', 500);
        }
    }

    public function fetch(Request $req){
        return ResponseFormatter::success($req->user(),'Data profile user berhasil diambil');
    }

    public function updateProfile(Request $req){
        $data = $req->all();

        $user = Auth::user();
        //ini gpp, ga error
        $user->update($data);

        return ResponseFormatter::success($user,'Profile Updated');
    }

    public function logout(Request $req){
        $token = $req->user()->currentAccessToken()->delete();
        return ResponseFormatter::success($token,'Token Revoked');
    }
}
