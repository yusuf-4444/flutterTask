import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/features/products/logic/products_cubit/prodcuts_cubit.dart';
import 'package:flutter_task/features/products/logic/products_cubit/prodcuts_state.dart';
import 'package:flutter_task/features/products/presentation/widgets/product_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductScreenBody extends StatelessWidget {
  const ProductScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProdcutsCubit, ProdcutsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => Skeletonizer(
            enabled: true,
            child: GridView.builder(
              padding: EdgeInsets.all(12.w),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.h,
                childAspectRatio: 0.62,
              ),
              itemBuilder: (context, index) => const ProductCard(
                id: 0,
                title: '',
                description: '',
                price: 0,
                imageUrl: '',
                rating: 0,
              ),
            ),
          ),
          success: (data) => GridView.builder(
            padding: EdgeInsets.all(12.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width < 600 ? 2 : 3,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 12.h,
              childAspectRatio: 0.55,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final product = data[index];
              return ProductCard(
                id: product.id,
                title: product.title,
                description: product.description,
                price: product.price,
                imageUrl: product.image,
                rating: product.rating.rate,
              );
            },
          ),
          failure: (error) => Center(
            child: Text(
              'Error: $error',
              style: TextStyle(color: Colors.red, fontSize: 14.sp),
            ),
          ),
        );
      },
    );
  }
}
