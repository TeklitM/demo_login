import 'package:demo_login/utils/helpers/app_shared_preference.dart';
import 'package:demo_login/views/home_page.dart';
import 'package:demo_login/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final controller = Get.put(AuthController());
  // await controller.loadLoginState();
  await AppSharedPreference.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: AppSharedPreference.getLoggedId() ?? false
          ? const HomePage()
          : LoginPage(),
    );
  }
}
