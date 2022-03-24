@extends('layouts.dashboard')

@section('title')
  Galeri
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
          <div class="card">
            <div class="card-header">
              Data @yield('title')
            </div>
            <br>
            <!-- <form action="{{route('blog.index') }}" method="GET" class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0" >
              <div class="input-group">
                <a href =" {{route('blog.create')}} " class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-plus"></i></a>  
                <input type="text" class="form-control" name="cari" placeholder="Cari Judul" value="">
                <button type="submit" class="btn btn-primary">Cari</button>
              </div>
            </form> -->
            <!-- <a href="{{ route('blog.create') }}" class="btn btn-md btn-success mb-3">TAMBAH BLOG BERITA</a>
                                                            <form action="{{route('blog.index') }}" method="GET">
                                                                <div class="input-group">
                                                                    <input type="text" class="form-control" name="cari" placeholder="Cari Judul" value="">
                                                                    <div class="input-group-append">
                                                                        <button type="submit" class="btn btn-primary">Cari</button>
                                                                    </div>
                                                                </div>
                                                            </form> -->
            <br>

            {{-- ALERT MESSAGE --}}
            @if ($message = Session::get('message'))
                <div class="alert alert-success d-flex align-items-center" role="alert">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Success:">
                    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                  </svg>
                  <div>
                    {{ $message }}
                  </div>
                </div>
            @endif

            <div class="card-body">
            <form action="{{ route('galeri.store') }}" method="POST" enctype="multipart/form-data">

             @csrf

                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">GAMBAR</label>
                                                                    <p class="text-muted">Ukuran gambar minimal 800x485</p>
                                                                    <input type="file" class="form-control @error('image') is-invalid @enderror" name="image">

                                                                    <!-- error message untuk title -->
                                                                    @error('image')
                                                                    <div class="alert alert-danger mt-2">
                                                                        {{ $message }}
                                                                    </div>
                                                                    @enderror
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">JUDUL</label>
                                                                    <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Masukkan Judul Blog">

                                                                    <!-- error message untuk title -->
                                                                    @error('title')
                                                                    <div class="alert alert-danger mt-2">
                                                                        {{ $message }}
                                                                    </div>
                                                                    @enderror
                                                                </div>

                                                                <button type="submit" class="btn btn-md btn-primary">SIMPAN</button>
                                                                <button type="reset" class="btn btn-md btn-warning">RESET</button>

                                                            </form>
                                                        </div>
  </main>
</div>
@endsection