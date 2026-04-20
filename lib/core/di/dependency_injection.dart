import 'package:dio/dio.dart';
import 'package:flutter_task/core/network/dio_factory.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerSingleton<Dio>(dio);
}
