<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;


class CartController extends Controller
{
    public function addToCart(Request $request){
        // session([$request->token => '123']);
        // $a = $request->session()->put($request->token, '123');
        return response()->json(session()->all());
    }
}
