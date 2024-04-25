import 'package:get/get.dart';
import 'package:olxclone/ui/screens/login_screen/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginController());
  }
}
