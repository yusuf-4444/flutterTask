import 'package:dio/dio.dart';
import 'package:flutter_task/core/network/api_constants.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio) = _ApiServices;

  @GET(ApiConstants.products)
}
