<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use App\Models\Produkkat;
use App\Models\Brand;
use Illuminate\Support\Facades\File;
// use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //jika data yg dicari ADA 
        if ($request) {
            $produks = Produk::with('produkkats', 'brand')->where('produk', 'like', '%' . $request->search . '%')->paginate(3);

            //jika data ygg dicari TIDAK ADA
        } else {
            $produks = Produk::with('produkkats', 'brand')->paginate(3);
        }

        return view('produk.index', [
            'produks' => $produks,
            'request' => $request
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $produkkats = Produkkat::all();
        $brands = Brand::all();
        return view('produk.create', [
            'produkkats' => $produkkats,
            'brands' => $brands
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'kategori' => 'required',
            'brand' => 'required',
            'produk' => 'required',
            'harga' => 'required',
            'deskripsi' => 'required',
            'keterangan' => 'required',
            'stock' => 'required',
            'gambar' => 'required|image|mimes:png,jpg,jpeg',
        ]);

        $gambar = time() . '-' . $request->gambar->getClientOriginalName();
        $request->gambar->move('gambar', $gambar);

        $produks = Produk::create([
            'id_kategori' => $request->kategori,
            'id_brand' => $request->brand,
            'produk' => $request->produk,
            'harga' => $request->harga,
            'deskripsi' => $request->deskripsi,
            'keterangan' => $request->keterangan,
            'stock' => $request->stock,
            'gambar'     => $gambar
        ]);

        // FLASH MESSAGE
        return redirect('/produk')->with('message', 'Data Berhasil Ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Produk  $produk
     * @return \Illuminate\Http\Response
     */
    public function show(Produk $produk)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Produk  $produk
     * @return \Illuminate\Http\Response
     */
    public function edit(Produk $produk)
    {
        $produkkats = Produkkat::all();
        $brands = Brand::all();
        return view('produk.edit', compact('produk', 'produkkats', 'brands'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Produk  $produk
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Produk $produk)
    {
        $this->validate($request, [
            'kategori' => 'required',
            'brand' => 'required',
            'produk' => 'required',
            'harga' => 'required',
            'deskripsi' => 'required',
            'keterangan' => 'required',
            'stock' => 'required',
            'gambar' => 'mimes:jpg,jpeg,png'
        ]);

        $produk = Produk::findOrFail($produk->id);

        if ($request->file('gambar') == "") {

            $produk->update([
                'id_kategori'     => $request->kategori,
                'id_brand'     => $request->brand,
                'produk'     => $request->produk,
                'harga'     => $request->harga,
                'deskripsi'     => $request->deskripsi,
                'keterangan'     => $request->keterangan,
                'stock'     => $request->stock,
            ]);
        } else {
            File::delete('gambar/' . $produk->gambar);

            $gambar = time() . '-' . $request->gambar->getClientOriginalName();
            $request->gambar->move('gambar', $gambar);
            $produk['gambar'] = $gambar;

            $produk->update([
                // 'gambar'     => $gambar->hashName(),
                'id_kategori'     => $request->kategori,
                'id_brand'     => $request->brand,
                'produk'     => $request->produk,
                'harga'     => $request->harga,
                'deskripsi'     => $request->deskripsi,
                'keterangan'     => $request->keterangan,
                'stock'     => $request->stock
            ]);
        }
        // FLASH MESSAGE
        return redirect('/produk')->with('message', 'Data Berhasil Diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Produk  $produk
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $produk = Produk::findOrFail($id);
        File::delete('gambar/' . $produk->gambar);
        $produk->delete();

        // FLASH MESSAGE
        return redirect('/produk')->with('message', 'Data Berhasil Dihapus');
    }
}
