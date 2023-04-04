@extends('layouts.app')
@section('main')
<div class="mt-5 mx-auto" style="width: 380px">
    <div class="card">
        <div class="card-body">
            @if (session('status'))
            <div class="alert alert-success">
                {{-- 1. ubah alert --}}
                A fresh verification link has been send to your email
            </div>
            @endif
            {{-- hapus form lalu buat form baru --}}
            Before proceeding, please check your email for verification.
            Or 
            <form action="{{ route('verification.send') }}" class="d-inline" method="POST">
            @csrf
            <button type="submit" class="btn btn-link p-0 m-0 align-baseline">{{ __('click here to request another link') }}</button>
            .
            </form>
        </div>
    </div>
</div>
@endsection