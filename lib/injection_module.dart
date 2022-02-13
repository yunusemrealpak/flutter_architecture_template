
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Connectivity get connectivity => Connectivity();

  // @lazySingleton
  // ICoreDio coreDio = NetworkManager.instance.coreDio;
}