<?php

namespace App\Http\Controllers;

use App\Models\Galeri;
use App\Models\Blog;
use App\Models\Trending;
use App\Models\Slide;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Analytics;
use App\Models\Sosialmedia;
use App\Models\Video;
use Spatie\Analytics\Period;

class UserControllerRahma extends Controller
{
    public function index()
    {
        $galeris = Galeri::all();
        $blogs = Blog::all();
        $trendings = Trending::all();
        $slides = Slide::all();
        $sosialmedia = Sosialmedia::all();
        $videos = Video::all();

        return view('user.indexrahma', [
            'galeris' => $galeris,
            'blogs' => $blogs,
            'trendings' => $trendings,
            'slides' => $slides,
            'sosialmedia' => $sosialmedia,
            'videos' => $videos
        ]);
    }

    public function artikelsrahma($id)
    {
        $sosialmedia = Sosialmedia::all();
        $blogs = Blog::where('id', $id)->first();
        return view('user.detailblog', [
            'blogs' => $blogs,
            'sosialmedia' => $sosialmedia
        ]);
    }

    public function trens($id)
    {
        $sosialmedia = Sosialmedia::all();
        $trendings = Trending::where('id', $id)->first();
        return view('user.detailtrending', [
            'trendings' => $trendings,
            'sosialmedia' => $sosialmedia
        ]);
    }
}
