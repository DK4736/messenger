import 'dart:async';

import 'package:flutter/material.dart';
import 'package:messenger/main.dart';
import 'package:messenger/services/auth/auth_gate.dart'; // Replace with the path to your main.dart

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();

    // Add a delay to simulate the splash screen
    Timer(Duration(seconds: 5), () {
      // Navigate to the main app screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthGate()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green], // Set your gradient colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          // You can add animations or other widgets here
          child: Text(
            'Welcome to HUR',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
