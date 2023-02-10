import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial());
  static ForgetPasswordCubit get(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> anotherWayFormKey = GlobalKey<FormState>();
}
