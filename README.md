# Dokumentasi Aplikasi "dashboard sparing"

## Deskripsi

Aplikasi "dashboard sparing" ini dibangun menggunakan framework Flutter dan berfungsi untuk memantau nilai pH, NH3N, TSS, COD, dan debit. Data tersebut diambil dari backend melalui API dengan koneksi HTTP.

## Teknologi yang Digunakan

* **Flutter** : Framework UI untuk membangun aplikasi mobile lintas platform.
* **HTTP Client** : Untuk melakukan request ke API backend.

## Struktur Kode

Struktur kode aplikasi dapat dilihat pada repository berikut:

`git@github.com:agungpriyatno/sparing_dashboard_flutter.git`

## Cara Instalasi dan Build

Berikut adalah langkah-langkah untuk menginstal, menjalankan, dan membangun aplikasi "dashboard sparing":

1. **Instalasi Flutter:**

   * Unduh dan instal Flutter SDK sesuai dengan sistem operasi Anda dari [https://flutter.dev/docs/get-started/install](https://www.google.com/url?sa=E&source=gmail&q=https://flutter.dev/docs/get-started/install).
   * Tambahkan Flutter ke PATH environment Anda.
   * Jalankan `flutter doctor` untuk memastikan semua dependensi terpenuhi.
2. **Clone Repository:**

   **Bash**

   ```
   git clone git@github.com:agungpriyatno/sparing_dashboard_flutter.git
   ```
3. **Instalasi Dependensi:**

   * Buka terminal dan arahkan ke direktori proyek.
   * Jalankan perintah berikut untuk menginstal dependensi:

   <!-- end list -->

   **Bash**

   ```
   flutter pub get
   ```
4. **Menjalankan Aplikasi:**

   * Pastikan perangkat atau emulator Android/iOS Anda terhubung.
   * Jalankan perintah berikut untuk menjalankan aplikasi:

   <!-- end list -->

   **Bash**

   ```
   flutter run
   ```
5. **Membangun Aplikasi:**

   * Untuk membangun aplikasi untuk platform tertentu, gunakan perintah berikut:

   <!-- end list -->

   **Bash**

   ```
   flutter build <platform>
   ```

   Contoh untuk membangun aplikasi Android:

   **Bash**

   ```
   flutter build apk
   ```

   Hasil build aplikasi Android akan berada di direktori `build/app/outputs/flutter-apk/`.

## Informasi Tambahan

* Pastikan Anda memiliki koneksi internet untuk mengunduh dependensi dan mengakses API backend.
* Untuk informasi lebih lanjut mengenai Flutter, silakan merujuk ke dokumentasi resmi Flutter: [https://flutter.dev/docs](https://www.google.com/url?sa=E&source=gmail&q=https://flutter.dev/docs).

## Catatan

Dokumentasi ini bersifat umum dan mungkin memerlukan penyesuaian tergantung pada konfigurasi spesifik proyek dan lingkungan pengembangan Anda.
