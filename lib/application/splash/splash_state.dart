import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required bool isNotificationReady,
    required bool isUserLoggedin,
  }) = _SplashState;
  factory SplashState.initial() => const SplashState(isUserLoggedin: false, isNotificationReady: false);
}