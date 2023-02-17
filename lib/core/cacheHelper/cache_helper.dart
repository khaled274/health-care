import 'package:get_storage/get_storage.dart';

class CacheHelper {
  static final GetStorage _appBox = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  static Future<void> cacheUserInfo({
    required String token,
  }) async {
    await _cacheUserToken(token);
  }

  static Future<void> _cacheUserToken(String token) async =>
      await _appBox.write('token', token);

  static String? get getUserToken => _appBox.read('token');

  static Future<void> signOut() async => await _appBox.erase();

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================
}
