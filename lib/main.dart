// ignore_for_file: prefer_const_constructors, unused_import, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_1/OTP.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:flutter_application_1/splash.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',  
    routes: {
      'login': (context) => Login(),
      'signup':(context) => Signup(),
      'splash': (context) => Splash(),
       'OTP':(context) => Otp(),
      
    },
  ));
}
