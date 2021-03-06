<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session;
use App\Models\Slider;
use App\Models\Produk;
use App\Models\Artikel;
use App\Models\Brand;
use App\Models\Cart;
use App\Models\User;
use App\Models\Sosmed;
use App\Models\AboutUs;
use Illuminate\Http\Request;


class UserController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }
    public function index()
    {
        $sliders = Slider::all();
        $produks = Produk::all();
        $artikels = Artikel::all();
        $brands = Brand::all();
        $user = User::all();
        $sosmed = Sosmed::find(4);
        $sosmed2 = Sosmed::all();
        $about = AboutUs::all();
        $cart = Cart::all();

        return view('user.index', [
            'sliders' => $sliders,
            'produks' => $produks,
            'artikels' => $artikels,
            'brands' => $brands,
            'cart' => $cart,
            'user' => $user,
            'sosmed' => $sosmed,
            'sosmed2' => $sosmed2,
            'about_us' => $about,
        ]);
    }


    // FUNCTION UNTUK MENAMPILKAN USER audio
    public function audio()
    {
        $produks = Produk::whereid_kategori('1')->get();
        $cart = Cart::all();
        $sosmed = Sosmed::all();
        return view('user.audio', [
            'produks' => $produks,
            'cart' => $cart,
            'sosmed' => $sosmed,
        ]);
    }
    // FUNCTION UNTUK MENAMPILKAN USER kulkas
    public function kulkas()
    {
        $produks = Produk::whereid_kategori('7')->get();
        $cart = Cart::all();
        $sosmed = Sosmed::all();
        return view('user.kulkas', [
            'produks' => $produks,
            'cart' => $cart,
            'sosmed' => $sosmed,
        ]);
    }
    // FUNCTION UNTUK MENAMPILKAN USER LAPTOP
    public function laptop()
    {
        $produks = Produk::whereid_kategori('8')->get();
        $cart = Cart::all();
        $sosmed = Sosmed::all();
        return view('user.laptop', [
            'produks' => $produks,
            'cart' => $cart,
            'sosmed' => $sosmed,
        ]);
    }
    // FUNCTION UNTUK MENAMPILKAN USER tv
    public function tv()
    {
        $produks = Produk::whereid_kategori('9')->get();
        $cart = Cart::all();
        $sosmed = Sosmed::all();
        return view('user.tv', [
            'produks' => $produks,
            'cart' => $cart,
            'sosmed' => $sosmed,
        ]);
    }
    // FUNCTION UNTUK MENAMPILKAN USER AC
    public function ac()
    {
        $produks = Produk::whereid_kategori('10')->get();
        $cart = Cart::all();
        $sosmed = Sosmed::all();
        return view('user.ac', [
            'produks' => $produks,
            'cart' => $cart,
            'sosmed' => $sosmed,
        ]);
    }
    // FUNCTION UNTUK MENAMPILKAN USER ARTIKEL
    public function artikels($id)
    {
        $artikels = Artikel::where('id', $id)->first();
        $cart = Cart::all();
        $sosmed = Sosmed::all();
        return view('user.artikel', [
            'artikels' => $artikels,
            'cart' => $cart,
            'sosmed' => $sosmed,
        ]);
    }

    //FUNCTION UNTUK MENAMPILKAN DETAIL PRODUK
    public function produks($id)
    {
        $produks = Produk::where('id', $id)->first();
        // $cart = Cart::all();
        $cart = Cart::all();
        $sosmed = Sosmed::all();
        return view('user.detailproduk', [
            'produks' => $produks,
            'cart' => $cart,
            'sosmed' => $sosmed,
        ]);
    }

    //FUNCTION ADD TO CART
    public function addToCart(Request $request)
    {
        $cart = new Cart;
        $cart->id_produk = $request->id_produk;
        $cart->quantity = $request->quantity;
        $cart->save();
        return redirect('/');
    }

    //FUNCTION MENAMPILKAN ABOUT US
    public function about()
    {
        $about_us = AboutUs::all();
        $sosmed = Sosmed::all();
        $cart = Cart::all();
        return view('user.about', [
            'about_us' => $about_us,
            'sosmed' => $sosmed,
            'cart' => $cart
        ]);
    }
}
