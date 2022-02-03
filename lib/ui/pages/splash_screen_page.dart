import 'dart:async';

import '../shared/theme.dart';
import 'package:flutter/material.dart';

import 'authentication/login_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  handleSplash() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  void initState() {
    handleSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreenColor,
      body: Stack(children: [
        Center(
          child: Image.asset(
            'assets/image/grab_logo.png',
            width: 128,
            height: 47,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            'assets/image/splash.png',
            width: double.infinity,
            height: 307,
            fit: BoxFit.cover,
          ),
        )
      ]),
    );
  }
}
