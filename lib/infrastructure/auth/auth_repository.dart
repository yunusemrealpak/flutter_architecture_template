import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_architecture_template/domain/auth/auth_failure.dart';
import 'package:flutter_architecture_template/domain/auth/i_auth_repository.dart';
import 'package:flutter_architecture_template/domain/models/user.dart';

@lazySingleton
@Injectable(as: IAuthRepository)
class AuthRepository extends IAuthRepository {
  // IAuthRemoteSource remoteSource;
  // AuthRepository({
  //   required this.remoteSource,
  // });

  // @override
  // Future<Either<AuthFailure, User>> login(
  //     String term, String password) async {
  //   var response =
  //       await coreDio.send("/login", type: HttpTypes.POST, data: null);

  //   if (response.error == null) {
  //     left(const ServerError());
  //   } else {
  //     final user = User.fromJson(response.data);
  //     streamController.add(user);
  //     right(user);
  //   }
  // }

  @override
  Stream<User> get authStateChanges => streamController.stream;


  @override
  Future logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, User>> login(String phoneNumber, String password) async {
    // try {
    //   var user = await remoteSource.login(phoneNumber: phoneNumber);
    //   return Right(user);
    // } on ServerException {
    //   return const Left(ServerError());
    // }

    throw UnimplementedError();
  }
}
