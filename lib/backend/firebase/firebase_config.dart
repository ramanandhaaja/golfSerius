import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA1OwOAUEVHBP-E2d1uiae3-SINHKzJh6U",
            authDomain: "golf-score-78lztp.firebaseapp.com",
            projectId: "golf-score-78lztp",
            storageBucket: "golf-score-78lztp.appspot.com",
            messagingSenderId: "532412778456",
            appId: "1:532412778456:web:e7f9882a3be572098ad4ad"));
  } else {
    await Firebase.initializeApp();
  }
}
