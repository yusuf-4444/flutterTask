import 'package:bloc/bloc.dart';
import 'package:flutter_task/core/network/api_result.dart';
import 'package:flutter_task/features/products/data/repo/products_repo.dart';
import 'package:flutter_task/features/products/logic/products_cubit/prodcuts_state.dart';

class ProdcutsCubit extends Cubit<ProdcutsState> {
  final ProductsRepo productsRepo;

  ProdcutsCubit(this.productsRepo) : super(const ProdcutsState.initial());
  Future<void> getProducts() async {
    emit(const ProdcutsState.loading());
    final result = await productsRepo.getProducts();
    result.when(
      success: (data) => emit(ProdcutsState.success(data)),
      failure: (error) => emit(ProdcutsState.failure(error)),
    );
  }
}
