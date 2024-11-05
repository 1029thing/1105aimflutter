import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB8A-XzNOo4Gq1kGtuqGGUxdnoXC3vG_Cs",
            authDomain: "aimksb-2.firebaseapp.com",
            projectId: "aimksb-2",
            storageBucket: "aimksb-2.firebasestorage.app",
            messagingSenderId: "508499843245",
            appId: "1:508499843245:web:926aac8b154503c2600e24",
            measurementId: "G-6W5NC4MCBD"));
  } else {
    await Firebase.initializeApp();
  }
}
