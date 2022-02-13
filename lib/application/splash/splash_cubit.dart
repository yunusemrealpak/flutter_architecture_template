import 'package:flutter_architecture_template/application/auth/auth_cubit.dart';
import 'package:flutter_architecture_template/application/notification/notification_cubit.dart';
import 'package:injectable/injectable.dart';

import '../core/base_cubit.dart';
import 'splash_state.dart';

@injectable
class SplashCubit extends BaseCubit<SplashState> {
  final AuthCubit authCubit;
  final NotificationCubit notification;
  SplashCubit(
    this.authCubit,
    this.notification,
  ) : super(SplashState.initial()) {
    configuraApp();
  }

  void configuraApp() async {
    await notification.firebaseInit();
    emit(state.copyWith(isNotificationReady: true));

    await authCubit.autoLogin();
    emit(state.copyWith(isUserLoggedin: authCubit.state.isLoggedIn));
  }
}
