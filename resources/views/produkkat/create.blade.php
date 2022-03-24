@extends('layouts.dashboard')

@section('title')
    Tambah Data Produk Kategori
@endsection

@section('content')
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">@yield('title')</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active">Tables</li>
            </ol>
            <form action="{{ route('produkkat.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="card">
              <div class="card-header">
                @yield('title')
              </div>
              <br>
              <div class="card-body">
                  <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Nama Kategori</label>
                    <input type="text" name="kategori" class="form-control @error('kategori') is-invalid @enderror" id="exampleFormControlInput1" placeholder="enter kategori">
                  
                    {{-- ERROR MESSAGE UNTUK Kategori --}}
                    @error('kategori')
                    <div class="alert alert-danger" role="alert">
                        {{ $message }}
                      </div>
                    @enderror
                    </div>
                  <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Slug</label>
                    <input type="text" name="slug" class="form-control @error('slug') is-invalid @enderror" id="exampleFormControlInput1" placeholder="enter slug">
                  
                  {{-- ERROR MESSAGE UNTUK Slug--}}
                  @error('slug')
                  <div class="alert alert-danger" role="alert">
                      {{ $message }}
                    </div>
                  @enderror
                  </div>
                  <button type="submit" class="btn btn-md btn-info">ADD</button>
              </div>
            </div>
            </form>
        </div>
    </main>
  </div>
@endsection