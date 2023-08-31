import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailController =
      TextEditingController(text: "test@gmail.com");
  TextEditingController passwordController = TextEditingController(text: "123");

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
