import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tugas_akhir/app/controllers/auth_controller.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/utils/loading.dart';
import 'package:tugas_akhir/app/controllers/page_index_controller.dart';
import 'package:tugas_akhir/app/controllers/feeder_controller.dart';
import 'firebase_options.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(FeederController(), permanent: true);
  Get.put(PageIndexController(), permanent: true);
  runApp(
    StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
        return GetMaterialApp(
          title: "Automatic Cat Feeder",
          debugShowCheckedModeBanner: false,
          initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
          getPages: AppPages.routes,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'inter',
          ),
        );
      },
    ),
  );
}

// class CatApp extends StatelessWidget {
//   // const CatApp({super.key});
//   final authC = Get.put(AuthController(), permanent: true);

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: authC.streamAuthStatus,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.active) {
//           print(snapshot.data);
//           return GetMaterialApp(
//             title: 'Automatic Cat Feeder',
//             debugShowCheckedModeBanner: false,

//             // initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
//             initialRoute:
//                 snapshot.data != null && snapshot.data!.emailVerified == true
//                     ? Routes.HOME
//                     : Routes.LOGIN,
//             getPages: AppPages.routes,
//             // home: snapshot.data != null ? HomeView() : LoginView(),
//           );
//         }
//         return LoadingView();
//       },
//     );
//   }
// }
