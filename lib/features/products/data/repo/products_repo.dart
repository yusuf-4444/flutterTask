import 'package:flutter_task/core/network/api_result.dart';
import 'package:flutter_task/core/network/api_services.dart';
import 'package:flutter_task/features/products/data/models/products_model.dart';

class ProductsRepo {
  final ApiServices apiService;

  ProductsRepo(this.apiService);

  Future<ApiResult<List<ProductsModel>>> getProducts() async {
    try {
      final products = await apiService.getProducts();
      return ApiResult.success(products);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
