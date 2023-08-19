import 'package:flutter/material.dart';
import 'package:tugas_akhir/login.dart';
import 'package:tugas_akhir/signup_page.dart';
import 'package:tugas_akhir/home.dart';

void main() {
  runApp(const CatApp());
}

class CatApp extends StatelessWidget {
  const CatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automatic Cat Feeder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
