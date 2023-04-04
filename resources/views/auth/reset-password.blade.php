@extends('layouts.app')
@section('main')
<div class="mt-5 mx-auto" style="width: 380px">
    <div class="card">
        <div class="card-body">
            {{-- 1. ubah route --}}
            <form action="{{route('password.update') }}" method="POST">
                @csrf
                {{-- 2. tambakan input baru--}}
                <input type="hidden" name="token" value="{{ $request->route('token') }}">
                <div class="mb-3">
                    <label for="" class="form-label">E-Mail</label>
                    {{-- 3. tambahkan request di value --}}
                    <input  name="email" type="email" 
                    class="form-control" value="{{ old('email', $request->email) }}">
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
                <div class="mb-3">
                    <label for="" class="form-label">Confirm Password</label>
                    <input  name="password_confirmation" type="password" class="form-control">
                </div>
                {{-- 8. ubah button jadi Reset Password --}}
                <button type="submit" class="btn btn-primary">Reset Password</button>
            </form>
        </div>
    </div>
</div>
@endsection