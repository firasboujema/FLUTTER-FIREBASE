import 'package:stage2/Screens/HomeScreen.dart';
import 'package:stage2/Authenticate/LoginScree.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stage2/Screens/HomeScreen2.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return HomePage();
    } else {
      return LoginScreen();
    }
  }
}
