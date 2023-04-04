<header class="p-3 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="#" class="nav-link px-2 text-white">Home</a></li>
            </ul>
            <div class="text-end">
                {{-- tambahkan guest lalu apit button 
                    kalau kita user nya ada tombol ini hilang
                    karena sudah login--}}
                @guest
                <a href="{{ route('login') }}" class="btn btn-outline-light me-2">Login</a>
                <a href="{{ route('register') }}" class="btn btn-warning">Sign-up</a>
                {{-- 2. tambahkan else copy dari login kita akan menampilkan data user disini --}}
                {{-- 3. kita panggil class Auth dan method user kemudian field name --}}
                {{-- 4. ubah semua btton->a, type->href --}}
                @else
                <a href="{{ route('logout') }}" class="btn btn-outline-light me-2" 
                onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                {{ Auth::user()->name }}</a>
                {{-- 5. buat form untuk logout, karena kita perlu ambil data dulu, danmenggunakan method POST
                pada html method POST dibuat menggunakan form --}}
                {{-- 6. kalau sudah tambahkan onclick di button logout --}}
                <form action="{{ route('logout') }}" id="logout-form" method="POST">
                @csrf
                </form>
                @endguest
            </div>
        </div>
    </div>
</header>