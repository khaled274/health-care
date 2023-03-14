import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/core/cacheHelper/cache_helper.dart';
import 'package:health_care/models/login_model.dart';

import '../../../data/auth_apis.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  bool isPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  IconData suffix = Icons.visibility_outlined;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(LoginChangePasswordVisibilityState());
  }

  LoginModel? loginModel;
  AuthApis authApis = AuthApis();
  Future login({required String userName, required String password}) async {
    try {
      loginModel =
          await authApis.loginAccount(userName: userName, password: password);
      if (loginModel!.token != null) {
        CacheHelper.cacheUserInfo(token: loginModel?.token ?? "");
      }
    } catch (e) {
      print(e);
    }
  }
}
