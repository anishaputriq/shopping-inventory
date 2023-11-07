# shopping_inventory
Anisha Putri Qonitah - 2206083256
PBP D

<details>
<summary> Tugas 7 </summary>

## Perbedaan Stateless dan Stateful Widget dalam Flutter

### StatelessWidget:
- Widget yang tidak dapat berubah secara dinamis selama runtime.
- Tidak menyimpan atau melacak perubahan data.
- Digunakan untuk bagian antarmuka pengguna yang statis.

### StatefulWidget:
- Memungkinkan perubahan atau pembaruan sesuai dengan perubahan state.
- Terdiri dari kelas widget itu sendiri dan kelas terpisah yang mengelola state.
- Memungkinkan perubahan tampilan atau perilaku widget.

## Widget yang Digunakan dalam Tugas

### MyHomePage (StatelessWidget):
- Tampilan utama yang menampilkan daftar item toko.
- Menggunakan Scaffold, AppBar, dan SingleChildScrollView.
- Menyusun item toko menggunakan GridView.

### ShopCard (StatelessWidget):
- Menampilkan setiap item toko dalam bentuk kartu.
- Menggunakan Material dan InkWell untuk respons ketika kartu ditekan.
- Menampilkan SnackBar saat kartu ditekan.

### ShopItem (Model Class):
- Merepresentasikan informasi setiap item toko.
- Berisi nama, ikon, dan warna untuk setiap item.

## Langkah Implementasi

### Membuat Program Flutter
1. Download Flutter dan buat proyek baru "shopping_inventory".
2. Buat file "menu.dart" untuk mengatur struktur widget.
3. Pindahkan kode MyHomePage dari "main.dart" ke "menu.dart".

### Membuat Tombol Sederhana
1. Di "menu.dart", ubah widget utama menjadi StatelessWidget.
2. Tambahkan tiga tombol dengan teks dan ikon.

### Menampilkan Snackbar
1. Tambahkan logika untuk menampilkan Snackbar saat tombol ditekan pada "ShopCard".

### Pengaturan Warna Tombol
1. Tambahkan properti warna pada class ShopItem.
2. Tentukan warna untuk setiap item di MyHomePage.
3. Gunakan properti warna pada ShopCard untuk membedakan warna tombol.

### Commit ke GitHub
1. Buat repository baru.
2. Lakukan `git add`, `commit`, dan `push` untuk mengunggah perubahan.
</details>


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
