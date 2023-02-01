import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDaW_s_1mVdvp0val6uIypDiaSE3hZ2xuo",
            authDomain: "yolo-eb64a.firebaseapp.com",
            projectId: "yolo-eb64a",
            storageBucket: "yolo-eb64a.appspot.com",
            messagingSenderId: "20280376701",
            appId: "1:20280376701:web:689f58fdb5ad9c5725a014",
            measurementId: "G-69ZMSM277L"));
  } else {
    await Firebase.initializeApp();
  }
}
