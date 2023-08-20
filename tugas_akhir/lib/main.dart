import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/auth_controller.dart';
import 'package:tugas_akhir/login.dart';
import 'package:tugas_akhir/splash_screen.dart';
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
      home: SplashScreen(),
    );
  }
}
