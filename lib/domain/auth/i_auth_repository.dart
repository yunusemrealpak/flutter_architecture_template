import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_architecture_template/domain/auth/auth_failure.dart';
import 'package:flutter_architecture_template/domain/core/base_repository.dart';
import 'package:flutter_architecture_template/domain/models/user.dart';

abstract class IAuthRepository extends BaseRepository{
  Stream<User> get authStateChanges;
  Future<Either<AuthFailure, User>> login(String phoneNumber, String password);
  Future logout();
}