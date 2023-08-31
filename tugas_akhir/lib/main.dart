import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

// import 'package:tugas_akhir/auth_controller.dart';
// import 'package:tugas_akhir/screens/login.dart';

import 'package:tugas_akhir/app/controllers/auth_controller.dart';
import 'package:tugas_akhir/app/modules/home/views/home_view.dart';
import 'package:tugas_akhir/app/modules/login/views/login_view.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/utils/loading.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  await Firebase.initializeApp();
  runApp(CatApp());
}

class CatApp extends StatelessWidget {
  // const CatApp({super.key});
  final authC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print(snapshot.data);
          return GetMaterialApp(
            title: 'Automatic Cat Feeder',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            // initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
            initialRoute:
                snapshot.data != null && snapshot.data!.emailVerified == true
                    ? Routes.HOME
                    : Routes.LOGIN,
            getPages: AppPages.routes,
            // home: snapshot.data != null ? HomeView() : LoginView(),
          );
        }
        return LoadingView();
      },
    );
  }
}
