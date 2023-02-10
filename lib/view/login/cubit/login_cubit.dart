import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  //   Future<void> userLogin({
  //   required String email,
  //   required String password,
  // }) async {
  //   emit(LoginLoadingState());
  //   final token = await FirebaseMessagingHelper.getToken();
  //   String os = Platform.operatingSystem;
  //   print(os);
  //   final response = await DioHelper.postData(
  //     url: login,
  //     data: {
  //       'email': email,
  //       'password': password,
  //       'token': token,
  //       'serial_number': token,
  //       'os': os,
  //     },
  //   );
  //   final data = response.data as Map<String, dynamic>;

  //   try {
  //     print(data);
  //     userModel = UserModel.fromJson(data);
  //     if (userModel!.data.token != null) {
  //       CacheHelper.cacheUserInfo(
  //           token: userModel!.data.token.toString(), userModel: userModel!);
  //     }
  //     emit(LoginSuccessState(userModel: userModel!));
  //   } on DioError catch (e) {
  //     debugPrint(e.error.toString());
  //   } catch (e, s) {
  //     debugPrint(e.toString());
  //     debugPrint(s.toString());
  //     emit(LoginLErrorState(error: e.toString()));
  //   }
  // }
}
