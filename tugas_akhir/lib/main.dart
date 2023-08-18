import 'package:flutter/material.dart';

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
    );
  }
}
