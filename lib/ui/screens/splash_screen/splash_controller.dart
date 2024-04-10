import 'package:olxclone/routes/routes_management.dart';
import 'package:olxclone/utils/base_controller.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 4), () {
      RouteManagement.goToHomeScreen();
    });
    super.onInit();
  }
}
