import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/application/splash/splash_cubit.dart';
import 'package:flutter_architecture_template/application/splash/splash_state.dart';
import 'package:flutter_architecture_template/core/navigation/navigation_manager.dart';
import 'package:flutter_architecture_template/core/navigation/route_paths.dart';
import 'package:flutter_architecture_template/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SplashCubit>(),
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          if(state.isUserLoggedin) {
            getIt<NavigationManager>().push(RoutePaths.HOME);
          } else {
            getIt<NavigationManager>().push(RoutePaths.LOGIN);
          }
        },
        builder: (context, state) {
          return const Scaffold(
            body: Center(
              child: Text("Splash"),
            ),
          );
        },
      ),
    );
  }
}
