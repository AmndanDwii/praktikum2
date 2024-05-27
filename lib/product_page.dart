import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final List<String> products = ["Product 1", "Product 2", "Product 3", "Product 4"];

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
                    // Misalnya, tampilkan dialog atau lakukan tindakan yang sesuai.
                    
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
