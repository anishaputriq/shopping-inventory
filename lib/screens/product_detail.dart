import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shopping_inventory/models/product.dart';
import 'package:shopping_inventory/widgets/left_drawer.dart';

// Widget untuk halaman detail item
class ItemDetailPage extends StatelessWidget {
  final Fields item;
  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama: ${item.name}', // Menampilkan atribut nama item
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Amount: ${item.amount}'), // Menampilkan deskripsi item
            Text('Description: ${item.description}'), // Menampilkan kelas item
            // Menampilkan atribut lainnya sesuai dengan model item Anda

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman daftar item
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

