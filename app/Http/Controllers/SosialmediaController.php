<?php

namespace App\Http\Controllers;

use App\Models\Sosialmedia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SosialmediaController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index(Request $request)
    {
        if ($request) {
            $sosialmedia = Sosialmedia::where('medsos', 'like', '%' . $request->cari . '%')->get();
        } else {
            $sosialmedia = Sosialmedia::all();
        }
        return view('admin.sosialmedia.index', [
            'sosialmedia' => $sosialmedia,
            'request' => $request
        ]);
    }

    /**
     * create
     *
     * @return void
     */
    public function create()
    {
        return view('admin.sosialmedia.create');
    }


    /**
     * store
     *
     * @param  mixed $request
     * @return void
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'medsos'     => 'required',
            'icon'     => 'required',
            'link'   => 'required'
        ]);


        $sosialmedia = Sosialmedia::create([
            'medsos'     => $request->medsos,
            'icon'     => $request->icon,
            'link'   => $request->link
        ]);

        if ($sosialmedia) {
            //redirect dengan pesan sukses
            return redirect()->route('sosialmedia.index')->with(['success' => 'Data Berhasil Disimpan!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('sosialmedia.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    /**
     * edit
     *
     * @param  mixed $blog
     * @return void
     */
    public function edit(Sosialmedia $sosialmedia)
    {
        return view('admin.sosialmedia.edit', compact('sosialmedia'));
    }


    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $blog
     * @return void
     */
    public function update(Request $request, Sosialmedia $sosialmedia)
    {
        $this->validate($request, [
            'medsos'     => 'required',
            'icon'   => 'required',
            'link'   => 'required'
        ]);

        //get data Blog by ID
        $sosialmedia = Sosialmedia::findOrFail($sosialmedia->id);

        if ($request->file('') == "") {

            $sosialmedia->update([
                'medsos'     => $request->medsos,
                'icon'   => $request->icon,
                'link'   => $request->link
            ]);
        } else {

            $sosialmedia->update([
                'medsos'     => $request->medsos,
                'icon'     => $request->icon,
                'link'   => $request->link
            ]);
        }

        if ($sosialmedia) {
            //redirect dengan pesan sukses
            return redirect()->route('sosialmedia.index')->with(['success' => 'Data Berhasil Diupdate!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('sosialmedia.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    /**
     * destroy
     *
     * @param  mixed $id
     * @return void
     */
    public function destroy($id)
    {
        $sosialmedia = Sosialmedia::findOrFail($id);

        $sosialmedia->delete();

        if ($sosialmedia) {
            //redirect dengan pesan sukses
            return redirect()->route('sosialmedia.index')->with(['success' => 'Data Berhasil Dihapus!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('sosialmedia.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }
}
