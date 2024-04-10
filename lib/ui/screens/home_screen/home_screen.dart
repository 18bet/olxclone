import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olxclone/ui/screens/splash_screen/splash_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      GetBuilder<SplashController>(builder: (controller) {
        return const Placeholder();
      });
}
