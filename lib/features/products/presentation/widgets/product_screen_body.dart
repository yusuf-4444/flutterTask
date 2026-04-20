import 'package:flutter/material.dart';
import 'package:flutter_task/features/products/presentation/widgets/product_card.dart';

class ProductScreenBody extends StatelessWidget {
  const ProductScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        return ProductCard();
      },
    );
  }
}
