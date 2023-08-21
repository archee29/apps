// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:tugas_akhir/controllers/auth_controller.dart';

// AuthController authController = AuthController.instance;
// final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
// FirebaseAuth firebaseAuth = FirebaseAuth.instance;
// FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

class AppConstant {
  static const double horizontalPadding = 20.0;
  static const double verticalPadding = 20.0;
}

class AppData {
  static List smartDevices = [
    ['Smart Light', 'assets/images/light-bulb.png', true],
    ['Smart AC', 'assets/images/air-conditioner.png', false],
    ['Smart TV', 'assets/images/smart-tv.png', false],
    ['Smart Fan', 'assets/images/fan.png', false],
  ];
}
