import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/controllers/auth_controller.dart';
import 'package:tugas_akhir/screens/login.dart';
import 'package:tugas_akhir/screens/splash_screen.dart';
import 'package:tugas_akhir/screens/home.dart';
import 'package:tugas_akhir/screens/main_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const CatApp());
}

class CatApp extends StatelessWidget {
  const CatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Automatic Cat Feeder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:tugas_akhir/controllers/auth_controller.dart';
// import 'package:tugas_akhir/controllers/auth_controller.dart';
// import 'package:tugas_akhir/screens/signup_page.dart';
// import 'package:tugas_akhir/utils/constants.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await firebaseInitialization.then((value) => {
//         Get.put(AuthController()),
//       });
//   runApp(const CatApp());
// }

// class CatApp extends StatelessWidget {
//   const CatApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Tugas Akhir',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       home: const SignUp(),
//     );
//   }
// }
