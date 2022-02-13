import 'package:dio/dio.dart';

import 'core_dio.dart';
import 'i_core_dio.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager get instance {
    return _instance ??= NetworkManager._init();
  }

  late ICoreDio coreDio;

  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: "",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "apikey": "apiKey",
      },
    );

    coreDio = CoreDio(baseOptions);
  }
}
