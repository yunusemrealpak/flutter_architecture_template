// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  _SplashState call(
      {required bool isNotificationReady, required bool isUserLoggedin}) {
    return _SplashState(
      isNotificationReady: isNotificationReady,
      isUserLoggedin: isUserLoggedin,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  bool get isNotificationReady => throw _privateConstructorUsedError;
  bool get isUserLoggedin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
  $Res call({bool isNotificationReady, bool isUserLoggedin});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;

  @override
  $Res call({
    Object? isNotificationReady = freezed,
    Object? isUserLoggedin = freezed,
  }) {
    return _then(_value.copyWith(
      isNotificationReady: isNotificationReady == freezed
          ? _value.isNotificationReady
          : isNotificationReady // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserLoggedin: isUserLoggedin == freezed
          ? _value.isUserLoggedin
          : isUserLoggedin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) then) =
      __$SplashStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isNotificationReady, bool isUserLoggedin});
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(
      _SplashState _value, $Res Function(_SplashState) _then)
      : super(_value, (v) => _then(v as _SplashState));

  @override
  _SplashState get _value => super._value as _SplashState;

  @override
  $Res call({
    Object? isNotificationReady = freezed,
    Object? isUserLoggedin = freezed,
  }) {
    return _then(_SplashState(
      isNotificationReady: isNotificationReady == freezed
          ? _value.isNotificationReady
          : isNotificationReady // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserLoggedin: isUserLoggedin == freezed
          ? _value.isUserLoggedin
          : isUserLoggedin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SplashState implements _SplashState {
  const _$_SplashState(
      {required this.isNotificationReady, required this.isUserLoggedin});

  @override
  final bool isNotificationReady;
  @override
  final bool isUserLoggedin;

  @override
  String toString() {
    return 'SplashState(isNotificationReady: $isNotificationReady, isUserLoggedin: $isUserLoggedin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SplashState &&
            const DeepCollectionEquality()
                .equals(other.isNotificationReady, isNotificationReady) &&
            const DeepCollectionEquality()
                .equals(other.isUserLoggedin, isUserLoggedin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isNotificationReady),
      const DeepCollectionEquality().hash(isUserLoggedin));

  @JsonKey(ignore: true)
  @override
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);
}

abstract class _SplashState implements SplashState {
  const factory _SplashState(
      {required bool isNotificationReady,
      required bool isUserLoggedin}) = _$_SplashState;

  @override
  bool get isNotificationReady;
  @override
  bool get isUserLoggedin;
  @override
  @JsonKey(ignore: true)
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}
