import 'package:flutter/cupertino.dart';
import 'package:flutter_architecture_template/core/navigation/navigation_manager.dart';
import 'package:flutter_architecture_template/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<T> extends Cubit<T> {
  BaseCubit(T initialState) : super(initialState);

  NavigationManager navigate = getIt<NavigationManager>();

  late BuildContext context;
  setContext(BuildContext _context) => context = _context;

  // T? getCubit<T>() {
  //   return context.read<T>();
  // }
}