   import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:messenger/firebase_options.dart'; // Import your FirebaseOptionsProvider
import 'package:messenger/services/auth/auth_gate.dart';
import 'package:messenger/services/auth/auth_service.dart';
import 'package:messenger/services/auth/login_or_register.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the options from FirebaseOptionsProvider
  await Firebase.initializeApp(options: FirebaseOptionsProvider.getOptions());

  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
