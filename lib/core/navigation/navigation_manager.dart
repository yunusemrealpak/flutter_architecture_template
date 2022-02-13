import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class NavigationManager {
  final navigatorMainKey = GlobalKey<NavigatorState>();

  Future<dynamic> push(String routeName, {dynamic arguments}) {
    return navigatorMainKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushToReplacement(String routeName, {dynamic arguments}) {
    return navigatorMainKey.currentState!.pushReplacementNamed(routeName, arguments: arguments);
  }

  void pop({dynamic arguments}) {
    navigatorMainKey.currentState!.pop(arguments);
  }

  popUntil(String routeName, {dynamic arguments}) {
    navigatorMainKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }
}