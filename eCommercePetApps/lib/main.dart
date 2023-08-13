import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/settings-page.dart';
// import 'package:myapp/page-1/lihat-jadwal-minuman-page.dart';
// import 'package:myapp/page-1/lihat-jadwal-makanan-page.dart';
// import 'package:myapp/page-1/edit-jadwal-page.dart';
// import 'package:myapp/page-1/tambah-jadwal-page.dart';
// import 'package:myapp/page-1/main-page.dart';
// import 'package:myapp/page-1/home-page.dart';
// import 'package:myapp/page-1/login-page.dart';
// import 'package:myapp/page-1/loading-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}
