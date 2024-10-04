import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView( // Allows scrolling if content overflows
        child: Column(
          children: [
            Image.asset( // Use Image.asset if using local images, or Image.network for online images
              product.imageUrl, // Ensure this points to the correct local asset path
              height: 250, // Set height to limit image size
              fit: BoxFit.cover, // Cover maintains aspect ratio
              width: double.infinity, // Makes the image take full width
            ),
            const SizedBox(height: 10),
            Text(
              product.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${product.price}',
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 10),
            Padding( // Add padding for better layout
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                product.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
