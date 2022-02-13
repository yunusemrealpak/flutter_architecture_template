import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/application/internet/internet_cubit.dart';
import 'package:flutter_architecture_template/application/internet/internet_state.dart';
import 'package:flutter_architecture_template/application/notification/notification_cubit.dart';
import 'package:flutter_architecture_template/constants/strings.dart';
import 'package:flutter_architecture_template/core/enums/connection_type.dart';
import 'package:flutter_architecture_template/core/navigation/navigation_manager.dart';
import 'package:flutter_architecture_template/presentation/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  await getIt<NotificationCubit>().firebaseInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InternetCubit>(),
        ),
      ],
      child: MaterialApp(
        title: Strings.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: getIt<NavigationManager>().navigatorMainKey,
        initialRoute: 'splash',
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<InternetCubit, InternetState>(
        listenWhen: (p, c) => p.connectionType != ConnectionType.WIFI,
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.connectionType) {
            case ConnectionType.WIFI:
              return const Center(child: Text("WIFI"));
            case ConnectionType.MOBILE:
              return const Center(child: Text("MOBILE"));
            default:
              return const Center(child: Text("NONE"));
          }
        },
      ),
    );
  }
}
