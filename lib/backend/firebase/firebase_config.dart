import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA3_H1ZP3cbV0NWAMweBaUHs5NAhYYfJyM",
            authDomain: "project-dhi-5nroic.firebaseapp.com",
            projectId: "project-dhi-5nroic",
            storageBucket: "project-dhi-5nroic.appspot.com",
            messagingSenderId: "247445520377",
            appId: "1:247445520377:web:18f39ef898f2bb13f7c728",
            measurementId: "G-NM8Q5QKNME"));
  } else {
    await Firebase.initializeApp();
  }
}
