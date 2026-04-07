import 'package:flutter/material.dart';
import '../app/models/product.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(name: 'Laptop', price: 999.99, description: 'High-performance laptop'),
      Product(name: 'Smartphone', price: 699.99, description: 'Latest smartphone'),
      Product(name: 'Tablet', price: 399.99, description: 'Portable tablet'),
      Product(name: 'Headphones', price: 199.99, description: 'Wireless headphones'),
      Product(name: 'Smartwatch', price: 299.99, description: 'Feature-rich smartwatch'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.shopping_bag, color: Colors.blue),
              title: Text(
                product.name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailScreen(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
