

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    String? name,
    String? email,
  }) = _User;

  const User._();

  factory User.initial() => const User(id: 0);

  factory User.fromJson(dynamic data) => _$UserFromJson(data);
}