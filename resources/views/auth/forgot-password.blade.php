@extends('layouts.app')
@section('main')
<div class="mt-5 mx-auto" style="width: 380px">
    <div class="card">
        <div class="card-body">
            {{-- 2. buat if kita berhasil mengirimkan email statusnya akan muncul--}}
            @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
            @endif
            {{-- 1. ubah route --}}
            <form action="{{route('password.email') }}" method="POST">
                @csrf
                {{-- 3. sisakan kolom email--}}
                <div class="mb-3">
                    <label for="" class="form-label">E-Mail</label>
                    <input  name="email" type="email" class="form-control" value="{{ old('email') }}">
                    @error('email')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                    @enderror
                </div>
                {{-- 4. ubah button --}}
                <button type="submit" class="btn btn-primary">Send Reset Link</button>
            </form>
        </div>
    </div>
</div>
@endsection