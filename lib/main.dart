import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart'; // Update this path according to your folder structure

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      ProductListScreen(), // Set your initial screen here
    );
  }
}
