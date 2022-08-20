import 'package:flutter/foundation.dart';
import 'package:stage2/Authenticate/Autheticate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: "AIzaSyDvV1VfDegaM-utGQlAo2yM1_rH1Ijl-rE",
      authDomain: "chat3-5d887.firebaseapp.com",
      projectId: "chat3-5d887",
      storageBucket: "chat3-5d887.appspot.com",
      messagingSenderId: "503423801888",
      appId: "1:503423801888:web:552b8489aa3a9540657a45",
    ));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }
}
