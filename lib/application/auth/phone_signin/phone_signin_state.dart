
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_signin_state.freezed.dart';

@freezed
class PhoneSigninState with _$PhoneSigninState {
  const factory PhoneSigninState({
    required String phone,
  }) = _PhoneSigninState;

  factory PhoneSigninState.initial() => const PhoneSigninState(phone: "");
}