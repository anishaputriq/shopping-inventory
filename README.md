# shopping_inventory
Anisha Putri Qonitah - 2206083256
PBP D

<details>
<summary> Tugas 9 </summary>

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Ini sering disebut sebagai "deserialization" atau "parsing" data JSON menjadi struktur data yang dapat digunakan oleh program. Namun, membuat model atau struktur data terlebih dahulu seringkali disarankan karena membantu dalam pengorganisasian data dan memudahkan manipulasi data dalam kode.

Pengambilan data JSON tanpa membuat model terlebih dahulu bisa dilakukan dengan memanfaatkan tipe data dinamis yang disediakan oleh banyak bahasa pemrograman. Ini memungkinkan kita untuk membaca data JSON dan menggunakan tipe data yang sesuai untuk menyimpannya. Namun, menggunakan model atau struktur data akan memberikan manfaat seperti validasi tipe data, membantu dokumentasi, dan mempermudah pengelolaan data

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest  merupakan sebuah objek atau kelas yang digunakan untuk mengirim permintaan HTTP yang memiliki informasi atau data cookie. Cookie adalah mekanisme yang digunakan untuk menyimpan informasi di sisi klien (seperti browser) dan digunakan untuk mengidentifikasi klien saat melakukan permintaan ke server.

Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter jika informasi cookie yang dikirim atau diterima dari server diperlukan secara global dalam aplikasi. Ini memungkinkan berbagai bagian dari aplikasi untuk menggunakan informasi yang sama dan mengirim permintaan HTTP yang memiliki cookie yang sesuai.

## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Mekanisme ini melibatkan pengambilan data dari server dalam format JSON, deserialisasi data JSON ke dalam struktur data yang sesuai (dalam Flutter, biasanya menggunakan json.decode()), dan kemudian menggunakan data tersebut untuk memperbarui widget-widget pada aplikasi Flutter. Setelah data di-decode, kita dapat menggunakannya untuk mengisi model atau struktur data yang kemudian digunakan dalam widget seperti ListView, GridView, atau Text untuk menampilkan data.

## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Input Data Akun pada Flutter: Pengguna memasukkan informasi akun seperti nama pengguna dan kata sandi pada aplikasi Flutter.
2. Permintaan Autentikasi: Flutter membuat permintaan HTTP ke backend Django dengan informasi yang dimasukkan pengguna.
3. Validasi Autentikasi di Django: Django memvalidasi informasi yang diterima dari Flutter, biasanya dengan menggunakan mekanisme seperti JSON Web Tokens (JWT) atau sesi. Jika informasi autentikasi benar, Django mengembalikan token atau memberikan akses ke aplikasi.
4. Token/Kode Akses: Jika autentikasi berhasil, Django mengembalikan token atau kode akses ke Flutter.
5. Tampilan Menu pada Flutter: Flutter menggunakan token atau kode akses yang diterima dari Django untuk memverifikasi identitas dan memberikan akses ke halaman atau menu yang sesuai untuk pengguna yang terotentikasi.

## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

### File 'product'

1. **dart:convert**: Digunakan untuk mengonversi data JSON menjadi objek Dart dan sebaliknya.
2. **productFromJson** dan **productToJson**: Fungsi untuk mengonversi data JSON menjadi objek Dart dan sebaliknya.
3. **Kelas Product dan Fields**: Merepresentasikan produk beserta bidang-bidangnya dengan metode untuk konversi JSON.
4. **Enum Model**: Digunakan untuk menentukan model produk.

### File 'list_product'

1. **MaterialApp, Scaffold, AppBar**: Konfigurasi tema dan tata letak dasar aplikasi.
2. **FutureBuilder, Center, CircularProgressIndicator**: Menangani data asinkron dan menampilkan indikator loading.
3. **Column, Text, SizedBox, ListView.builder, GestureDetector**: Menampilkan daftar produk dengan fitur interaksi.
4. **ElevatedButton, Navigator, MaterialPageRoute**: Navigasi ke halaman detail produk.

### File 'login'

1. **MaterialApp, Scaffold, AppBar, Container, Column, TextField, SizedBox, ElevatedButton, Text, SnackBar, AlertDialog, TextButton**: Halaman login, menampilkan input dan pesan interaksi.
2. **pbp_django_auth**: Otentikasi pengguna menggunakan backend Django.
3. **CookieRequest**: Membuat permintaan HTTP dengan otentikasi berbasis cookie.
4. **Navigator**: Navigasi antar layar setelah autentikasi.

### File 'menu'

1. **MaterialApp, Scaffold, AppBar, Text, SingleChildScrollView, Padding, Column, GridView.count**: Menampilkan menu toko dalam kisi.
2. **ShopCard, LeftDrawer**: Widget kustom untuk kartu toko dan laci kiri.

### File 'product_detail_page'

1. **MaterialApp, Scaffold, AppBar, LeftDrawer, SingleChildScrollView, Column, Text, SizedBox, ElevatedButton, Image.network**: Menampilkan detail produk.

### File 'shoplist_form'

1. **MaterialApp, Scaffold, AppBar, Center, Text, Color, LeftDrawer, Form, GlobalKey, TextFormField, ElevatedButton, ButtonStyle, MaterialStateProperty, ScaffoldMessenger, SnackBar, Navigator, AlertDialog**: Membuat formulir penambahan item.

### File 'left_drawer'

1. **Drawer, ListView, DrawerHeader, Column, Text, Padding, ListTile, Icon, Navigator.pushReplacement, MaterialPageRoute**: Laci kiri dengan navigasi antar layar.

### File 'shop_card'

1. **Material, InkWell, ScaffoldMessenger, SnackBar, Navigator, PageRoute, BuildContext, Container, Center, Column, Icon, Padding, Text, Provider**: Menampilkan kartu toko dengan interaksi.

### File 'item_list'

1. **Scaffold, AppBar, Color, LeftDrawer, ListView.builder, ListTile, Text, Product**: Menampilkan daftar produk.

### File 'main'

1. **MaterialApp, Provider, CookieRequest, LoginPage**: Konfigurasi root aplikasi dan halaman utama.


## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

### Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
1. Lakukan penyesuaian dengan mambuat app baru authentication dan fungsi lainnya 
2. git add commit push 
3. deploy proyek django

### Membuat halaman login pada proyek tugas Flutter.
1. Buat halaman login.dart di folder screens
2. isi file login dengan kode class LoginApp
3. Pada file main.dart, pada Widget MaterialApp(...), ubah home: MyHomePage() menjadi home: LoginPage()

### Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
1. buat django app baru bernama authentication dan tambahkan ke settings.py
2. buat fungsi login dan logout di authentication/views.py
3. tambahkan corheaders
4. deploy proyek
5. Di flutter install package pbp_django_auth
6. memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider

### Membuat model kustom sesuai dengan proyek aplikasi Django.
1. Buka endpoint JSON django 
2. Salinlah data JSON dan buka situs web Quicktype.
3. Pada situs web Quicktype, ubahlah setup name menjadi Product, source type menjadi JSON, dan language menjadi Dart.
4. Tempel data JSON yang telah disalin sebelumnya ke dalam textbox yang tersedia pada Quicktype.
5. Buat file baru pada folder lib/models dengan nama product.dart, dan tempel kode yang sudah disalin dari Quicktype.

### Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
1. Lakukan flutter pub add http pada terminal proyek Flutter untuk menambahkan package http.
2. Tambahkan kode berikut untuk memperbolehkan akses Internet pada aplikasi Flutter
3. Buatlah file baru pada folder lib/screens dengan nama list_product.dart.
4. Buat kelas ProductPage dan import library yang dibutuhkan
5. Tambahkan  halaman list_product.dart ke widgets/left_drawer.dart
6. Ubah fungsi tombol Lihat Produk pada halaman utama agar mengarahkan ke halaman ProductPage
7. Impor file yang dibutuhkan saat menambahkan ProductPage ke left_drawer.dart dan shop_card.dart.

Integrasi Form Flutter Dengan Layanan Django
1. buat fungsi baru di main view.py Django create_product_flutter
2. tambah path baru
3. Deploy ulang aplikasi 
4. di Flutter Hubungkan halaman shoplist_form.dart dengan CookieRequest (final request = context.watch<CookieRequest>();)

Implementasi Fitur logout
1. buat views.py untuk logout di django
2. tambahkan path 
3. di flutter, di shop_card.dart tambahkan final request = context.watch<CookieRequest>();
4. ubah widget Inkwell ke async

### Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
1. buat file baru di screen dengan nama product_detail.dart
2. tambahkan kode di list_product.dart untuk onTap agar dialihkan ke page detail
3. buat page detail dan import model yang dibutuhkan
4. buat button kembali agar dialihkan ke list product

### Melakukan add-commit-push ke GitHub.

</details>

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
