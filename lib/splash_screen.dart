import 'dart:async';
import 'package:flutter/material.dart';
import 'package:skinzilla_app/extentions.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#FFFAFA'.toColor(),
      body: Center(
        child: Image.asset(
          'asset/splash_screen.png',
          width: 800.0,
        ),
      ),
    );
  }
}
