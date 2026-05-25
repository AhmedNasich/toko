 Tokokita 🛒

Tokokita adalah aplikasi mobile berbasis Flutter untuk manajemen data produk pada toko. Aplikasi ini dibangun dengan mengimplementasikan arsitektur **BLoC (Business Logic Component)** untuk state management dan terintegrasi dengan RESTful API backend.

## Fitur Utama
- **Autentikasi Pengguna:** Pendaftaran (Registrasi) dan Masuk (Login) akun.
- **Manajemen Produk (CRUD):** - Menampilkan daftar produk.
  - Menambah produk baru.
  - Melihat detail produk.
  - Mengubah (Update) data produk.
  - Menghapus (Delete) produk.
- **Manajemen Sesi:** Menyimpan status sesi pengguna yang login secara lokal menggunakan `shared_preferences`.

## Teknologi yang Digunakan
- **Framework:** Flutter (Dart SDK `^3.5.2`)
- **State Management:** BLoC Pattern
- **Networking:** HTTP package (`http: ^0.13.4`)
- **Local Storage:** Shared Preferences (`shared_preferences: ^2.0.11`)
- **UI Icons:** Cupertino Icons (`cupertino_icons: ^1.0.2`)

## Struktur Direktori Utama
Proyek ini memisahkan logika aplikasi dan antarmuka pengguna dalam beberapa direktori utama di dalam `lib/`:
- `bloc/` - Berisi *business logic* untuk komponen seperti Login, Logout, Registrasi, dan Produk.
- `helpers/` - Berisi konfigurasi URL API (`api_url.dart`), modul HTTP helper (`api.dart`), manajemen pengecualian/error (`app_exception.dart`), dan penyimpanan token sesi (`user_info.dart`).
- `model/` - Berisi representasi struktur data (*Login*, *Produk*, *Registrasi*).
- `ui/` - Berisi halaman antarmuka pengguna seperti halaman Login, Registrasi, List Produk, Detail Produk, dan Form Produk.
- `widget/` - Komponen antarmuka yang dapat digunakan kembali (*Success Dialog*, *Warning Dialog*).

## Konfigurasi API Backend
Aplikasi ini terhubung ke backend REST API. URL endpoint backend dapat dikonfigurasi pada file `lib/helpers/api_url.dart`. Secara default, aplikasi menunjuk ke localhost emulator Android:
