import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/domain/models/user.dart';
import 'package:flutter_architecture_template/domain/network/i_core_dio.dart';
import 'package:flutter_architecture_template/domain/network/network_manager.dart';

abstract class BaseRepository {
  StreamController<User> streamController = StreamController();
  ICoreDio coreDio = NetworkManager.instance.coreDio;

  @protected
  @mustCallSuper
  void dispose() {
    streamController.close();
  }
}
