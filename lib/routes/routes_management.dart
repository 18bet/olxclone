import 'package:get/get.dart';
import 'package:olxclone/routes/routes.dart';

mixin RouteManagement {
  static void goToLogin() {
    if (Get.currentRoute != Routes.splashScreen) {
      Get.offAllNamed(Routes.splashScreen);
    }
  }
  static void goToHomeScreen() {
    if (Get.currentRoute != Routes.homeScreen) {
      Get.offAllNamed(Routes.homeScreen);
    }
  }
}
