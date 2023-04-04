@extends('layouts.app')
@section('main')
<div class="mt-5 mx-auto" style="width: 380px">
    {{-- 1. alert nya dihapus --}}
    <div class="card">
        <div class="card-body">
            {{-- 2. buat route register sudah dihandle fortify --}}
            <form action="{{route('register') }}" method="POST">
                @csrf
                {{-- 3. ubah field jadi name --}}
                <div class="mb-3">
                    <label for="" class="form-label">Name</label>
                    <input  name="name" type="text" class="form-control" value="{{ old('name') }}">
                    @error('name')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                    @enderror
                </div>
                {{-- 4.hapus textarea, copy field name --}}
                {{-- 5. ubah jadi feld email --}}
                <div class="mb-3">
                    <label for="" class="form-label">E-Mail</label>
                    <input  name="email" type="email" class="form-control" value="{{ old('email') }}">
                    @error('email')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                    @enderror
                </div>
                {{-- 6. copy ubah jadi password --}}
                <div class="mb-3">
                    <label for="" class="form-label">Password</label>
                    <input  name="password" type="password" class="form-control" value="{{ old('password') }}">
                    @error('password')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                    @enderror
                </div>
                {{-- 7. clone kode bisa pake shift+alt+arrow down --}}
                <div class="mb-3">
                    <label for="" class="form-label">Confirm Password</label>
                    <input  name="password_confirmation" type="password" class="form-control">
                </div>
                {{-- 8. ubah button jadi Register --}}
                <button type="submit" class="btn btn-primary">Register</button>
            </form>
        </div>
    </div>
</div>
@endsection