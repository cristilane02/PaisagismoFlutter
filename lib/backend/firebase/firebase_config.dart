import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBLZfKw-26oQQ7KrKyUzubMACDJdzrXaUU",
            authDomain: "projetomobile-91180.firebaseapp.com",
            projectId: "projetomobile-91180",
            storageBucket: "projetomobile-91180.appspot.com",
            messagingSenderId: "92612180891",
            appId: "1:92612180891:web:d3db6257f960752fdc3f3e",
            measurementId: "G-58VCBKYS09"));
  } else {
    await Firebase.initializeApp();
  }
}
