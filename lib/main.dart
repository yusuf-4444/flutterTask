import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/di/dependency_injection.dart';
import 'package:flutter_task/features/products/logic/products_cubit/prodcuts_cubit.dart';
import 'package:flutter_task/features/products/presentation/product_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpGetIt();
  runApp(const FlutterTask());
}

class FlutterTask extends StatelessWidget {
  const FlutterTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => getIt<ProdcutsCubit>()..getProducts(),
          child: const ProductScreen(),
        ),
      ),
    );
  }
}
