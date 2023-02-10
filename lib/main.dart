import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/view/login/view/login_screen.dart';

import 'core/blocObserver/bloc_observer.dart';
import 'core/cacheHelper/cache_helper.dart';
import 'core/dioHelper/dio_helper.dart';
import 'core/router/router.dart';
import 'core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //===============================================================
  //===============================================================
  Bloc.observer = MyBlocObserver();
  //===============================================================
  await DioHelper.init();
  //===============================================================
  await CacheHelper.init();
  //===============================================================

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care System',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      theme: theme(context),
      home: const LoginScreen(),
    );
  }
}
