import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/screens/home.dart';
import 'package:tugas_akhir/screens/login.dart';
import 'package:tugas_akhir/screens/main_page.dart';
import 'package:tugas_akhir/screens/settings_page.dart';
import 'package:tugas_akhir/screens/stats_page.dart';

class AuthController extends GetxController {
  //Authcontroller.intance..
  static AuthController instance = Get.find();

  //email, password,name ..
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    // our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("Halaman Login Page");
      Get.offAll(() => const LoginPage());
    } else {
      Get.offAll(() => HomeScreen(email: user.email!));
      // Get.offAll(() => MainPage(email: user.email!));
      // Get.offAll(() => StatsPage(email: user.email!));
      // Get.offAll(() => SettingPage(email: user.email!));
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "About User",
        "User Message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Akun Gagal Dibuat",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "About Login",
        "Login Message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Login Gagal",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
  }

  void logOut() async {
    await auth.signOut();
  }
}
