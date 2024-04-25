import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olxclone/ui/screens/login_screen/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      GetBuilder<LoginController>(builder: (controller) {
        return const Placeholder();
      });
}
