<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::resource('/product', 'ProductController');
Route::get('/product/{id}/{slug?}', 'ProductController@show')->name('product.show');
Route::get('/productAjax/{id}', 'ProductController@productAjax')->name('product.productAjax');
Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

Route::get('/admin', 'AdminController@index')->name('admin')->middleware('admin');


Route::resource('/comment', 'CommentController');
Route::resource('/category', 'CategoryController');

Route::get('/search/',['as' =>'search','uses' => 'ProductController@getSearch']);

Route::post('/cart-add' ,'CartController@add')->name('cart.add');
Route::get('/cart-checkout', 'CartController@cart')->name('cart.checkout');
Route::post('/cart-clear', 'CartController@clear')->name('cart.clear');