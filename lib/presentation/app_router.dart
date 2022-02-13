import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/navigation/route_paths.dart';
import 'package:flutter_architecture_template/presentation/splash/screen/splash_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.SPLASH:
        return _materialRoute(
          route: RoutePaths.SPLASH,
          page: const SplashView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static MaterialPageRoute<dynamic> _materialRoute(
      {required String route, required Widget page}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: route),
      builder: (_) => page,
    );
  }
}
