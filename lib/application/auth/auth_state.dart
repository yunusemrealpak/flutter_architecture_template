import 'package:flutter_architecture_template/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required User user,
  }) = _AuthState;
  const AuthState._();
  
  factory AuthState.empty() => AuthState(
        user: User.initial(),
      );

  bool get isLoggedIn => user != User.initial();
}
