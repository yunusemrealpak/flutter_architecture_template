// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneSigninStateTearOff {
  const _$PhoneSigninStateTearOff();

  _PhoneSigninState call({required String phone}) {
    return _PhoneSigninState(
      phone: phone,
    );
  }
}

/// @nodoc
const $PhoneSigninState = _$PhoneSigninStateTearOff();

/// @nodoc
mixin _$PhoneSigninState {
  String get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneSigninStateCopyWith<PhoneSigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneSigninStateCopyWith<$Res> {
  factory $PhoneSigninStateCopyWith(
          PhoneSigninState value, $Res Function(PhoneSigninState) then) =
      _$PhoneSigninStateCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneSigninStateCopyWithImpl<$Res>
    implements $PhoneSigninStateCopyWith<$Res> {
  _$PhoneSigninStateCopyWithImpl(this._value, this._then);

  final PhoneSigninState _value;
  // ignore: unused_field
  final $Res Function(PhoneSigninState) _then;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PhoneSigninStateCopyWith<$Res>
    implements $PhoneSigninStateCopyWith<$Res> {
  factory _$PhoneSigninStateCopyWith(
          _PhoneSigninState value, $Res Function(_PhoneSigninState) then) =
      __$PhoneSigninStateCopyWithImpl<$Res>;
  @override
  $Res call({String phone});
}

/// @nodoc
class __$PhoneSigninStateCopyWithImpl<$Res>
    extends _$PhoneSigninStateCopyWithImpl<$Res>
    implements _$PhoneSigninStateCopyWith<$Res> {
  __$PhoneSigninStateCopyWithImpl(
      _PhoneSigninState _value, $Res Function(_PhoneSigninState) _then)
      : super(_value, (v) => _then(v as _PhoneSigninState));

  @override
  _PhoneSigninState get _value => super._value as _PhoneSigninState;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_PhoneSigninState(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneSigninState implements _PhoneSigninState {
  const _$_PhoneSigninState({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'PhoneSigninState(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneSigninState &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$PhoneSigninStateCopyWith<_PhoneSigninState> get copyWith =>
      __$PhoneSigninStateCopyWithImpl<_PhoneSigninState>(this, _$identity);
}

abstract class _PhoneSigninState implements PhoneSigninState {
  const factory _PhoneSigninState({required String phone}) =
      _$_PhoneSigninState;

  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$PhoneSigninStateCopyWith<_PhoneSigninState> get copyWith =>
      throw _privateConstructorUsedError;
}
