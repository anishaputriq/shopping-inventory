# shopping_inventory
Anisha Putri Qonitah - 2206083256
PBP D

<details>
<summary> Tugas 8 </summary>

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
- Navigator.push(): Metode ini digunakan untuk menempatkan halaman baru di atas stack navigasi. Ketika pengguna melakukan navigasi ke halaman baru, halaman sebelumnya tetap ada di dalam stack dan dapat diakses kembali dengan menekan tombol back.

contoh penggunaan:
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NextPage()),
);

- Navigator.pushReplacement(): Metode ini digunakan untuk mengganti halaman saat ini dalam stack dengan halaman baru. Ini berarti halaman yang sebelumnya akan dihapus dari stack, sehingga tidak bisa kembali dengan menekan tombol back. Biasanya digunakan ketika ingin mengganti halaman setelah melakukan suatu aksi seperti login atau registrasi.

Contoh penggunaan:
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomePage()),
);

## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Berikut beberapa layout widget pada Flutter yang sering digunakan:
1. Container: Digunakan untuk menempatkan widget lain di dalamnya dan memberikan kontrol terhadap properti seperti padding, margin, background color, dan lainnya.
2. Column: Mengatur widget-child dalam satu kolom vertikal.
3. Row: Mengatur widget-child dalam satu baris horizontal.
4. Stack: Menempatkan widget-child di atas satu sama lain, sering digunakan untuk tumpukan yang kompleks.
5. ListView: Menampilkan daftar widget dalam bentuk list, baik secara vertikal atau horizontal.

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Pada tugas, elemen input pada form yang digunakan adalah:

TextFormField: Digunakan untuk menerima input teks dari pengguna seperti nama produk, amount, dan deskripsi. Ini digunakan karena memungkinkan validasi input dan memberikan kontrol terhadap keyboard dan styling.

## Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean Architecture adalah pendekatan dalam mengorganisir kode agar aplikasi lebih modular, terpisah, dan mudah diuji. Beberapa prinsipnya antara lain:
- Pembagian lapisan (Layers): Menyusun aplikasi ke dalam lapisan yang terpisah seperti Domain, Data, dan Presentation.
- Keterpisahan kelas-kelas: Kode tidak saling tergantung secara langsung, tetapi menggunakan kontrak antar-lapisan (misalnya, Repository sebagai kontrak antara Domain dan Data).
- Prinsip Single Responsibility (SRP): Setiap kelas memiliki satu tanggung jawab utama.
Penerapan Clean Architecture pada Flutter bisa dilakukan dengan memisahkan kode ke dalam lapisan yang berbeda, menggunakan konsep Dependency Injection untuk mengelola dependensi, dan membuat kontrak antar lapisan untuk menghindari ketergantungan langsung antara kelas-kelas.

Ini dapat diimplementasikan dengan menggunakan paket-paket Flutter seperti Provider, GetX, atau Riverpod untuk manajemen state, serta memisahkan kode ke dalam folder-folder sesuai dengan lapisan (misalnya, domain, data, presentation).

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
### Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru
1. Buat berkas baru pada direktori lib dengan nama shoplist_form.dart
2. Mengisi widget Form dengan field (name, amount, description).
3. Buatlah widget Column sebagai child dari SingleChildScrollView
4. Buatlah widget TextFormField yang dibungkus oleh Padding sebagai salah satu children dari widget Column.
5. Buatlah tombol sebagai child selanjutnya dari Column. Bungkus tombol ke dalam widget Padding dan Align
6. Tambankan kode agar memunculkannya pada pop-up yang akan muncul setelah tombol ditekan On Pressed()

### Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
1. Pada widget ShopItem pada berkas menu.dart yang sudah dibuat pada tutorial sebelumnya, buat agar  kode yang terletak pada atribut onTap dari InkWell dapat melakukan navigasi ke route lain
2. Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage

### Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
1. Tambahkan fungsi showDialog() pada bagian onPressed() dan munculkan widget AlertDialog pada fungsi tersebut. Kemudian, tambahkan juga fungsi untuk reset form.

### Membuat sebuah drawer pada aplikasi 
1. Buat direktori baru widgets dengan nama left_drawer.dart dan tambahkan kode Widget build
2. Tambahkan impor untuk halaman-halaman yang kita ingin masukkan navigasinya ke dalam Drawer Menu (MyHomePage n ShopFormPage)
3. Masukan routing untuk halaman yang kita impor
4. Hias drawer denagn memasukan drawer di header
5. Memasukkan ke halaman menu.dart

### Refactoring File
1. Buatlah berkas baru dengan nama shop_card.dart pada direktori widgets
2. Pindahkan isi widget ShopItem pada menu.dart ke berkas widgets/shop_card.dart.
3. Pindahkan file menu.dart dan shoplist_form.dart ke dalam folder screens

### BONUS Membuat sebuah halaman baru, yaitu halaman daftar item yang sudah dibuat dengan isi halamannya adalah setiap data produk yang sudah pernah dibuat.
1. buat file baru di direktori screens yaitu shoplist_item.dart
2. buat class product dan buat ShopItemPage dengan Stateless Widget untuk menampilkan produk yang sudah di save 
3. di shoplist_form.dart tambahkan kode ShopItemPage.products.add(Product(name: _name, amount: _amount, description: _description)); untuk menyimpan produk
4. di menu.dart dan di left_drawer.dart tambahkan navigasi agar saat Lihat Produk di tekan akan ke ShopItemPage

### Melakukan add-commit-push ke GitHub.

</details>

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
