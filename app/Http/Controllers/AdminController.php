<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
class AdminController extends Controller
{
    public function index()
    {
         // Lay tat ca san pham
         $products = Product::paginate(12);
        return view('pages.admin.dashboard' ,compact('products'));
    }
}
