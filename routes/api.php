<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::post('/register', 'AuthController@register');
Route::post('/login', 'AuthController@login');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    $user= $request->user();
    $user['role'] =  array('admin');
    return  $user;
});
Route::middleware('auth:sanctum')->get('/logout', function (Request $request) {
    return $request->user()->currentAccessToken()->delete();
});
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/create-item', 'DatabaseController@createItem');
    Route::get('/get-item', 'DatabaseController@getItem');
    Route::get('/delete-item', 'DatabaseController@deleteItem');
    Route::get('/get-items', 'DatabaseController@getItems');
    Route::post('/update-item', 'DatabaseController@updateItem');
    Route::get('/duplicate-item', 'DatabaseController@duplicateItem');
});

Route::get('/get-items-ui', 'DatabaseController@getItemsUi');
Route::get('/get-items-pro', 'DatabaseController@getItemsPro');
Route::get('/get-items-of-cat', 'DatabaseController@getItemsOfCat');
Route::get('/get-ids-product', 'DatabaseController@getItemsIds');
Route::get('/get-url', 'DatabaseController@getUrl');
Route::post('/login', 'AuthController@login');
Route::post('/save-contact', 'DatabaseController@saveContact');

// Route::get('stripe', 'StripeController@stripe');
Route::post('stripe', 'StripeController@stripePost')->name('stripe.post');
// Route::prefix('cart')->group(function () {
//     Route::post('addtocart', 'CartController@addToCart');
// });