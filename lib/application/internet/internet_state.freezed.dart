// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'internet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InternetStateTearOff {
  const _$InternetStateTearOff();

  _InternetState call(
      {ConnectionType? connectionType, required bool isInProgress}) {
    return _InternetState(
      connectionType: connectionType,
      isInProgress: isInProgress,
    );
  }
}

/// @nodoc
const $InternetState = _$InternetStateTearOff();

/// @nodoc
mixin _$InternetState {
  ConnectionType? get connectionType => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetStateCopyWith<InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res>;
  $Res call({ConnectionType? connectionType, bool isInProgress});
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  final InternetState _value;
  // ignore: unused_field
  final $Res Function(InternetState) _then;

  @override
  $Res call({
    Object? connectionType = freezed,
    Object? isInProgress = freezed,
  }) {
    return _then(_value.copyWith(
      connectionType: connectionType == freezed
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as ConnectionType?,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InternetStateCopyWith<$Res>
    implements $InternetStateCopyWith<$Res> {
  factory _$InternetStateCopyWith(
          _InternetState value, $Res Function(_InternetState) then) =
      __$InternetStateCopyWithImpl<$Res>;
  @override
  $Res call({ConnectionType? connectionType, bool isInProgress});
}

/// @nodoc
class __$InternetStateCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res>
    implements _$InternetStateCopyWith<$Res> {
  __$InternetStateCopyWithImpl(
      _InternetState _value, $Res Function(_InternetState) _then)
      : super(_value, (v) => _then(v as _InternetState));

  @override
  _InternetState get _value => super._value as _InternetState;

  @override
  $Res call({
    Object? connectionType = freezed,
    Object? isInProgress = freezed,
  }) {
    return _then(_InternetState(
      connectionType: connectionType == freezed
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as ConnectionType?,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InternetState implements _InternetState {
  const _$_InternetState({this.connectionType, required this.isInProgress});

  @override
  final ConnectionType? connectionType;
  @override
  final bool isInProgress;

  @override
  String toString() {
    return 'InternetState(connectionType: $connectionType, isInProgress: $isInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternetState &&
            const DeepCollectionEquality()
                .equals(other.connectionType, connectionType) &&
            const DeepCollectionEquality()
                .equals(other.isInProgress, isInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(connectionType),
      const DeepCollectionEquality().hash(isInProgress));

  @JsonKey(ignore: true)
  @override
  _$InternetStateCopyWith<_InternetState> get copyWith =>
      __$InternetStateCopyWithImpl<_InternetState>(this, _$identity);
}

abstract class _InternetState implements InternetState {
  const factory _InternetState(
      {ConnectionType? connectionType,
      required bool isInProgress}) = _$_InternetState;

  @override
  ConnectionType? get connectionType;
  @override
  bool get isInProgress;
  @override
  @JsonKey(ignore: true)
  _$InternetStateCopyWith<_InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}
