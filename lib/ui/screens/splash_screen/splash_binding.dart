import 'package:get/get.dart';
import 'package:olxclone/ui/screens/splash_screen/splash_controller.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }

}