import 'package:get/get.dart';
import 'package:olxclone/routes/routes.dart';
import 'package:olxclone/ui/screens/home_screen/home_binding.dart';
import 'package:olxclone/ui/screens/home_screen/home_screen.dart';
import 'package:olxclone/ui/screens/splash_screen/splash_binding.dart';
import 'package:olxclone/ui/screens/splash_screen/splash_screen.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
