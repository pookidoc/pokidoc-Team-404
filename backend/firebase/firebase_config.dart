import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBNNK6fQ2hWWqmcAGdn2VymHSMkVowwadY",
            authDomain: "pokidoc-f9e71.firebaseapp.com",
            projectId: "pokidoc-f9e71",
            storageBucket: "pokidoc-f9e71.appspot.com",
            messagingSenderId: "965924386530",
            appId: "1:965924386530:web:1671593754cbc1139150bb",
            measurementId: "G-P748EQVLPC"));
  } else {
    await Firebase.initializeApp();
  }
}
