import "package:firebase_core/firebase_core.dart";
import "package:firebaseapp/firebase_options.dart";
import "package:firebaseapp/pages/login_page.dart";
import "package:flutter/material.dart";

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform );
    

  runApp(
    MaterialApp(
      title: 'Firebase',
      home: LoginPage(),
    )
  );
}

