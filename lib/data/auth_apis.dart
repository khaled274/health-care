import 'package:health_care/core/dioHelper/dio_helper.dart';

import '../constants/end_point.dart';
import '../models/login_model.dart';
import '../models/register_model.dart';

class AuthApis {
  Future loginAccount(
      {required String userName, required String password}) async {
    final response = await DioHelper.postData(url: login, data: {
      "username": userName,
      "password": password,
    });
    if (response.statusCode == 200) {
      final loginModel = LoginModel.fromJson(response.data);
      return loginModel;
    } else {
      return;
    }
  }

  Future registerAccount({
    required String userName,
    required String password,
    required String email,
  }) async {
    final response = await DioHelper.postData(url: login, data: {
      "username": userName,
      "password": password,
      "email": email,
    });
    if (response.statusCode == 200) {
      final registerModel = RegisterModel.fromJson(response.data);
      return registerModel;
    } else {
      return;
    }
  }
}
