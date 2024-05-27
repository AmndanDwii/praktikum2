import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final List<String> products = ["Samsung", "Apple ", "Xiaomi", "OPPO"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Expanded(
                  child: Text(products[index]),
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    // Tambahkan logika untuk menangani penambahan produk ke keranjang
                    // Misalnya, tampilkan snackbar untuk notifikasi berhasil ditambahkan.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Produk ${products[index]} berhasil ditambahkan ke keranjang.'),
                        duration: Duration(seconds: 2), // Durasi notifikasi
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

