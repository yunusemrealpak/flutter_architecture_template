import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/application/internet/internet_state.dart';
import 'package:flutter_architecture_template/core/enums/connection_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@injectable
class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  StreamSubscription? connectivityStreamSubscription;

  InternetCubit({required this.connectivity}) : super(InternetState.initial()) {
    monitorInternetConnection();
  }

  void monitorInternetConnection() {
    connectivityStreamSubscription = connectivity.onConnectivityChanged.listen((connectivityResult) {
      if(connectivityResult == ConnectivityResult.wifi) {
        emitInternetConnection(ConnectionType.WIFI);
      } else if(connectivityResult == ConnectivityResult.mobile) {
        emitInternetConnection(ConnectionType.MOBILE);
      } else if(connectivityResult == ConnectivityResult.none) {
        emitInternetDisconnected();
      }
    });
  }

  void emitInternetConnection(ConnectionType _connectionType) =>
      emit(state.copyWith(connectionType: _connectionType, isInProgress: false));

  void emitInternetDisconnected() => emit(state.copyWith(connectionType: null, isInProgress: true));

  @override
  Future<void> close() {
    connectivityStreamSubscription?.cancel();
    return super.close();
  }
}
