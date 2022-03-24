@extends('layouts.dashboard')

@section('title')
    Beranda
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
            <div class="card-body">
              SELAMAT DATANG
            </div>
          </div>
      </div>
  </main>
</div>
@endsection
