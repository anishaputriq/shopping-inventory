import 'package:flutter/material.dart';

class Product {
  final String name;
  final int amount;
  final String description;

  Product({required this.name, required this.amount, required this.description});
}

class ShopItemPage extends StatelessWidget {
  static List<Product> products = [];

  const ShopItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: _buildProductList(),
    );
  }

  Widget _buildProductList() {
    if (products.isEmpty) {
      return const Center(
        child: Text('Anda belum menambahkan produk'),
      );
    } else {
      return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          Product product = products[index];
          return _buildProductCard(product);
        },
      );
    }
  }

  Widget _buildProductCard(Product product) {
    return Card(
      child: ListTile(
        title: Text('Nama: ${product.name}'),
        subtitle: Text('Amount: ${product.amount}\nDeskripsi: ${product.description}'),
      ),
    );
  }
}
