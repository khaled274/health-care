import 'package:flutter/material.dart';
import 'package:health_care/view/login/view/login_screen.dart';
import 'core/cacheHelper/cache_helper.dart';
import 'core/dioHelper/dio_helper.dart';
import 'core/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //========================================
  await DioHelper.init();
  //========================================
  await CacheHelper.init();
  //========================================

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: const LoginScreen(),
    );
  }
}
