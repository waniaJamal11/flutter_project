// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  @override
  MyOtpState createState() => MyOtpState();
}

class MyOtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
  return Container(
      decoration: BoxDecoration( 
      image: DecorationImage(image: AssetImage('assets/white.png'), fit: BoxFit.cover)),
   
    child: Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
// Logo
          Positioned(
            top: -5,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo.png',
                height: 380,
              ),
            ),
          ),

          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.5,
                right: 35,
                left: 35,
              ),
             
              child: Column(
                children: [

// Message
                  RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Please enter the 6-digit code sent to your email ",
                              style: TextStyle(color:  Colors.black),
                            ),
                            TextSpan(
                              text: "contact.uiuxexperts@gmail.com",
                              style: TextStyle(color: Color(0xFF58964D),),
                            ),
                            TextSpan(
                              text: " for verification.",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),


                  SizedBox(
                    height: 30,
                  ),
// OTP Input Fields
                 Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        6,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.0),
                          width: 46,
                          height: 70,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              counterText: '', 
                            ),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            onChanged: (value) {
                              
                              if (value.isNotEmpty) {
                                if (index < 5) {
                                  FocusScope.of(context).nextFocus();
                                }
                              }
                            },
                          ),
                        ),
                      ),
                    ),


                  SizedBox(
                    height: 30,
                  ),

// Verify Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF449636),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Otp(),
                              ),
                            );
                          },
                          icon: Text(
                            'Verify',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )
  );
  }
}
