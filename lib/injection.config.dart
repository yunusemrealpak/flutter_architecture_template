// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i3;
import 'application/internet/internet_cubit.dart' as _i7;
import 'application/notification/notification_cubit.dart' as _i9;
import 'application/splash/splash_cubit.dart' as _i10;
import 'core/navigation/navigation_manager.dart' as _i8;
import 'domain/auth/i_auth_repository.dart' as _i4;
import 'infrastructure/auth/auth_repository.dart' as _i5;
import 'injection_module.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit(get<_i4.IAuthRepository>()));
  gh.lazySingleton<_i5.AuthRepository>(() => _i5.AuthRepository());
  gh.lazySingleton<_i6.Connectivity>(() => injectableModule.connectivity);
  gh.factory<_i7.InternetCubit>(
      () => _i7.InternetCubit(connectivity: get<_i6.Connectivity>()));
  gh.singleton<_i8.NavigationManager>(_i8.NavigationManager());
  gh.singleton<_i9.NotificationCubit>(_i9.NotificationCubit());
  gh.factory<_i10.SplashCubit>(() =>
      _i10.SplashCubit(get<_i3.AuthCubit>(), get<_i9.NotificationCubit>()));
  return get;
}

class _$InjectableModule extends _i11.InjectableModule {}
