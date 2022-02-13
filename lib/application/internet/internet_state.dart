import 'package:flutter_architecture_template/core/enums/connection_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_state.freezed.dart';

@freezed
abstract class InternetState with _$InternetState{
  const factory InternetState({
    ConnectionType? connectionType,
    required bool isInProgress,
  }) = _InternetState;

  factory InternetState.initial() => const InternetState(isInProgress: true);
}