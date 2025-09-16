import 'package:dio/dio.dart';

class HttpService {
  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://viacep.com.br/ws/',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  Dio get dio => _dio;
}