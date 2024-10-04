import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 'p1',
      title: 'Bread',
      description: 'Desi Bread',
      price: 29.99,
      imageUrl: 'assets/images/img.png',
    ),
    Product(
      id: 'p2',
      title: 'Eggs',
      description: 'Desi eggs',
      price: 49.99,
      imageUrl: 'assets/images/img_1.png',
    ),
    // Add more products if you like
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}
