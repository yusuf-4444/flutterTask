import 'package:flutter/material.dart';
import 'package:flutter_task/features/products/presentation/widgets/product_screen_body.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: const ProductScreenBody(),
    );
  }
}
