import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olxclone/ui/screens/splash_screen/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      GetBuilder<SplashController>(builder: (controller) {
        return const Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "OlX",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                Text(
                  "INDIA",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        );
      });
}
