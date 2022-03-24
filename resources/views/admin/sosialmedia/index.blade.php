@extends('layouts.dashboard')

@section('title')
   Sosial Media
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
            <form action="{{route('sosialmedia.index') }}" method="GET" class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0" >
              <div class="input-group">
                <a href =" {{route('sosialmedia.create')}} " class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-plus"></i></a>  
                <input type="text" class="form-control" name="cari" placeholder="Cari Judul" value="{{$request->cari}}">
                <button type="submit" class="btn btn-primary">Cari</button>
              </div>
            </form>
            <!-- <a href="{{ route('blog.create') }}" class="btn btn-md btn-success mb-3">TAMBAH BLOG BERITA</a>
                                                            <form action="{{route('blog.index') }}" method="GET">
                                                                <div class="input-group">
                                                                    <input type="text" class="form-control" name="cari" placeholder="Cari Judul" value="{{$request->cari}}">
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
                                                            <table class="table table-bordered">
                                                                <thead>
                                                                    <tr>
                                                                    <th scope="col">NO </th>
                                                                        <th scope="col">JENIS SOSIAL MEDIA </th>
                                                                        <th scope="col">ICON SOSIAL MEDIA</th>
                                                                        <th scope="col">LINK</th>
                                                                        <th scope="col">AKSI</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <?php $no = 1; ?>
                                                                    @forelse ($sosialmedia as $sosialmedia)
                                                                    <tr>
                                                                        <td>{{ $no++ }}</td>

                                                                        <td>{{ $sosialmedia->medsos }}</td>
                                                                        <td>{{ $sosialmedia->icon }}</td>
                                                                        <td>{{ $sosialmedia->link }}</td>
                                                                        <td class="text-center">
                                                                            <a class="btn btn-block btn-info" href="{{ route('sosialmedia.edit', $sosialmedia->id) }}" ?>Edit</a>

                                                                            <form onsubmit="return confirm('Apakah Anda Yakin ?');" action="{{ route('sosialmedia.destroy', $sosialmedia->id) }}" method="POST">

                                                                                @csrf
                                                                                @method('DELETE')
                                                                                <button type="submit" class="btn btn-sm btn-danger">HAPUS</button>
                                                                            </form>
                                                                        </td>
                                                                    </tr>
                                                                    @empty
                                                                    <div class="alert alert-danger">
                                                                        Data Sosial Media belum Tersedia.
                                                                    </div>
                                                                    @endforelse
                                                                </tbody>
                                                            </table>

                                                        </div>
      </div>
  </main>
</div>
@endsection