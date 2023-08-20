// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tugas_akhir/home.dart';
// import 'package:tugas_akhir/login.dart';

// class AuthController extends GetxController {
//   //Authcontroller.intance..
//   static AuthController instance = Get.find();

//   //email, password,name ..
//   late Rx<User?> _user;
//   FirebaseAuth auth = FirebaseAuth.instance;

//   @override
//   void onReady() {
//     super.onReady();
//     _user = Rx<User?>(auth.currentUser);
//     // our user would be notified
//     _user.bindStream(auth.userChanges());
//     ever(_user, _initialScreen);
//   }

//   _initialScreen(User? user) {
//     if (user == null) {
//       print("Halaman Login Page");
//       Get.offAll(() => LoginPage());
//     } else {
//       Get.offAll(() => HomePage(email: user.email!));
//     }
//   }

//   void register(String email, password) async {
//     try {
//       await auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//     } catch (e) {
//       Get.snackbar(
//         "About User",
//         "User Message",
//         backgroundColor: Colors.redAccent,
//         snackPosition: SnackPosition.BOTTOM,
//         titleText: Text(
//           "Akun Gagal Dibuat",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         messageText: Text(
//           e.toString(),
//           style: TextStyle(color: Colors.white),
//         ),
//       );
//     }
//   }

//   void login(String email, password) async {
//     try {
//       await auth.signInWithEmailAndPassword(email: email, password: password);
//     } catch (e) {
//       Get.snackbar(
//         "About Login",
//         "Login Message",
//         backgroundColor: Colors.redAccent,
//         snackPosition: SnackPosition.BOTTOM,
//         titleText: Text(
//           "Login Gagal",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         messageText: Text(
//           e.toString(),
//           style: TextStyle(color: Colors.white),
//         ),
//       );
//     }
//   }

//   void logOut() async {
//     await auth.signOut();
//   }
// }

import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/screens/home.dart';
import 'package:tugas_akhir/screens/signup_page.dart';
import 'package:tugas_akhir/utils/constants.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  late Rx<User?> firebaseUser;

  @override
  void onInit() {
    super.onInit();

    firebaseUser = Rx<User?>(firebaseAuth.currentUser);

    firebaseUser.bindStream(firebaseAuth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const SignUp());
    } else {
      Get.offAll(() => const HomeScreen());
    }
  }

  void register(String email, password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (firebaseAuthException) {}
  }

  void login(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (firebaseAuthException) {}
  }
}
