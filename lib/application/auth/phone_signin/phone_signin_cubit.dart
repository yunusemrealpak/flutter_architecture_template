

import 'package:flutter_architecture_template/application/auth/phone_signin/phone_signin_state.dart';
import 'package:flutter_architecture_template/application/core/base_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneSigninCubit extends BaseCubit<PhoneSigninState> {
  PhoneSigninCubit() : super(PhoneSigninState.initial());
}