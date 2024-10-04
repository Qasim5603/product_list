import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/product_detail_screen.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        child: ListTile(
          leading: Image.network(
            product.imageUrl,
            width: 50,
            fit: BoxFit.cover,
          ),
          title: Text(product.title),
          subtitle: Text('\$${product.price}'),
        ),
      ),
    );
  }
}
