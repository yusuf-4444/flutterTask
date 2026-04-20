import 'package:dio/dio.dart';
import 'package:flutter_task/core/network/api_services.dart';
import 'package:flutter_task/core/network/dio_factory.dart';
import 'package:flutter_task/features/products/data/repo/products_repo.dart';
import 'package:flutter_task/features/products/logic/products_cubit/prodcuts_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerSingleton<Dio>(dio);
  getIt.registerSingleton<ApiServices>(ApiServices(dio));

  getIt.registerLazySingleton<ProductsRepo>(
    () => ProductsRepo(getIt<ApiServices>()),
  );

  getIt.registerFactory<ProdcutsCubit>(
    () => ProdcutsCubit(getIt<ProductsRepo>()),
  );
}
