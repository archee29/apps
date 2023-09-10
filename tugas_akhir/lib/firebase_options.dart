import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyA8v5gthSBoSNPa_GZ1hZlYWY7vpZCDCbA",
    authDomain: "tugas-akhir-3c0d9.firebaseapp.com",
    projectId: "tugas-akhir-3c0d9",
    storageBucket: "tugas-akhir-3c0d9.appspot.com",
    messagingSenderId: "250405337714",
    appId: "1:250405337714:web:b9a1f854d98417d067e0eb",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD9cMliTs9G41vgRLcjS2VacvtMWWR1doQ',
    appId: '1:250405337714:android:8ce3efd5d761bd2367e0eb',
    messagingSenderId: '250405337714',
    projectId: 'tugas-akhir-3c0d9',
    storageBucket: 'tugas-akhir-3c0d9.appspot.com',
  );
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCWj9mSPTC_XvKr9oFlbdw_nC5Ggbid0M',
    appId: '1:250405337714:ios:6b93b73b29e25b6567e0eb',
    messagingSenderId: '250405337714',
    projectId: 'tugas-akhir-3c0d9',
    storageBucket: 'tugas-akhir-3c0d9.appspot.com',
    iosBundleId: 'com.tugas-akhir',
  );
}
