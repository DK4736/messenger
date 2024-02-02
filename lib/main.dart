import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:messenger/intro.dart';
import 'package:messenger/pages/login_page.dart';
import 'package:messenger/services/auth/auth_gate.dart';
import 'package:messenger/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get FirebaseOptions for Android
  FirebaseOptions firebaseOptions = FirebaseOptionsProvider.getOptions();

  await Firebase.initializeApp(options: firebaseOptions);

  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}
