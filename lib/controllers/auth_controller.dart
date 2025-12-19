import 'package:demo_login/utils/helpers/app_shared_preference.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final isLoggedIn = false.obs;

  // Future<void> loadLoginState() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   isLoggedIn.value = prefs.getBool('isLoggedIn') ?? false;
  // }

  Future<void> login() async {
    // final prefs = await SharedPreferences.getInstance();
    // await prefs.setBool('isLoggedIn', true);
    AppSharedPreference.setLoggedId(true);
    isLoggedIn.value = true;
  }

  Future<void> logout() async {
    // final prefs = await SharedPreferences.getInstance();
    AppSharedPreference.setLoggedId(false);
    // await prefs.clear();

    isLoggedIn.value = false;
  }
}
