import 'dart:async';

import 'package:flutter_architecture_template/application/core/base_cubit.dart';
import 'package:flutter_architecture_template/application/auth/auth_state.dart';
import 'package:flutter_architecture_template/domain/auth/i_auth_repository.dart';
import 'package:flutter_architecture_template/domain/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthCubit extends BaseCubit<AuthState> {
  late final IAuthRepository _authRepo;
  late StreamSubscription<User> _authUserSubscription;

  AuthCubit(this._authRepo) : super(AuthState.empty()) {
    _authUserSubscription =
        _authRepo.authStateChanges.listen(_listenAuthStateChangesStream);
  }

  Future<void> _listenAuthStateChangesStream(User authUser) async {
    emit(state.copyWith(user: authUser));
  }

  Future<void> autoLogin() async {
  }

  Future<void> signOut() async {
    await _authRepo.logout();
  }

  @override
  Future<void> close() async {
    await _authUserSubscription.cancel();
    super.close();
  }
}
