
import 'package:flutter_architecture_template/core/enums/http_types.dart';
import 'package:flutter_architecture_template/domain/network/response_model.dart';

abstract class ICoreDio {
  Future<ResponseModel> send(
    String path, {
    required HttpTypes type,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
}
