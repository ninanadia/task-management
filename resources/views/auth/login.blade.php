@extends('layouts.app')
@section('main')
<div class="mt-5 mx-auto" style="width: 380px">
    <div class="card">
        <div class="card-body">
            {{-- 1. ubah route jadi login --}}
            <form action="{{route('login') }}" method="POST">
                @csrf
                {{-- sisakan kolom email dan password--}}
                <div class="mb-3">
                    <label for="" class="form-label">E-Mail</label>
                    <input  name="email" type="email" class="form-control" value="{{ old('email') }}">
                    @error('email')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Password</label>
                    <input  name="password" type="password" class="form-control" value="{{ old('password') }}">
                    @error('password')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                    @enderror
                </div>
                {{-- 3. ubah button jadi Login --}}
                <button type="submit" class="btn btn-primary">Login</button>
                <a href="{{ route('password.request') }}" class="btn btn-link">
                    Forgot Your Password ?
                    </a>
            </form>
        </div>
    </div>
</div>
@endsection