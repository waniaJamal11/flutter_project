// ignore_for_file: prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api, use_key_in_widget_constructors

import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class Splash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), 
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Image.asset(
                'assets/splashlogo.png',
                height: 350,
              ),
              bottom: 50, 
            ),
            Positioned(
              child: Image.asset(
                'assets/leaf1.png',
                height: 790,
              ),
              left: 17, 
            ),
          ],
        ),
      ),
    );
  }
}