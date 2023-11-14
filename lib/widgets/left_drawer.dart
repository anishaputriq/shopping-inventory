import 'package:flutter/material.dart';
import 'package:shopping_inventory/screens/menu.dart';
import 'package:shopping_inventory/screens/shoplist_form.dart';
import 'package:shopping_inventory/screens/shoplist_item.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Shopping List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat seluruh keperluan belanjamu di sini!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                    ),
              ],
            ),
          ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_shopping_cart),
              title: const Text('Tambah Produk'),
              // Bagian redirection ke ShopFormPage
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopFormPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_carousel_outlined),
              title: const Text('Lihat Produk'),
              // Bagian redirection ke ShopFormPage
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopItemPage()),
                );
              },
            ),
        ],
      ),
    );
  }
}