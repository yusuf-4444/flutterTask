import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/core/di/dependency_injection.dart';
import 'package:flutter_task/features/products/logic/products_cubit/prodcuts_cubit.dart';
import 'package:flutter_task/features/products/presentation/product_screen.dart';

void main() async {
  runApp(const FlutterTask());
  await setUpGetIt();
}

class FlutterTask extends StatelessWidget {
  const FlutterTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => getIt<ProdcutsCubit>()..getProducts(),
        child: const ProductScreen(),
      ),
    );
  }
}
