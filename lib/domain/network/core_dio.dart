import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_architecture_template/core/enums/http_types.dart';
import 'package:flutter_architecture_template/core/enums/response_error_code.dart';
import 'package:flutter_architecture_template/domain/network/response_model.dart';
import 'i_core_dio.dart';


class CoreDio with DioMixin implements Dio, ICoreDio {
  @override
  final BaseOptions options;

  CoreDio(this.options) {
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  @override
  Future<ResponseModel> send(
    String path, {
    required HttpTypes type,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response<dynamic> response = await request(
        path,
        data: data,
        options: Options(method: type.rawValue),
        queryParameters: queryParameters,
      );
      switch (response.statusCode) {
        case HttpStatus.ok:
        case HttpStatus.accepted:
          return ResponseModel(data: response.data);
        default:
          return ResponseModel(statusCode: response.statusCode);
      }
    } catch (e) {
      return ResponseModel(statusCode: HttpStatus.gone);
    }
  }
}
