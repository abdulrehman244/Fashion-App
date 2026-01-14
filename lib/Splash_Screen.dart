import 'dart:async';

import 'package:e_commerce_app/Welcome_Screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => WelcomeScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        color: Colors.black,

        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/splash.png"),
      //         decoration: BoxDecoration(
      // image: const DecorationImage(
      //   image: AssetImage(
      //       "assets/images/splash.png"),
      //   fit: BoxFit.cover,
      // ),
      //         ),
            ),
    );
  }
}