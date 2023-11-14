// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/signup.dart';

class Login extends StatefulWidget {
const Login({Key? key}) : super(key: key);

  @override
  MyLoginState createState() => MyLoginState();
}

class MyLoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
      image: AssetImage('assets/white.png'), fit: BoxFit.cover)),
      child: Scaffold(
        body: Stack(
        alignment: Alignment.center,
          children: [
  //logo          
            Positioned(
               top: -5, 
               child: Container(
               alignment: Alignment.center, 
              child: Image.asset('assets/logo.png',height: 380,
                      ),
                    ),
                  ),
            SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 35),
                  
              child: Column(
                children: [
   //username and password               
                 TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    hintText: 'Username',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Image.asset(
                      'assets/user.png', 
                      width: 24,
                      height: 24,
                    ),
                  ),
                  
                ),

                  SizedBox(
                    height: 20,
                  ),

                 TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                     ),
                    suffixIcon: Image.asset(
                      'assets/lock.png', 
                      width: 24,
                      height: 24,
                    ),
                  ),
                  
                ),

// forget password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              color: Color(0xFFFF0000),
                            ),
                          )),
                    ],
                  ),

                  SizedBox(
                    height: 2,
                  ),
//sign in button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 280, 
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF449636),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
//dividers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 40,
                          endIndent: 6,
                        ),
                      ),
                      Text('or',
                          style: TextStyle(
                              color: Color(0xFF58964D), fontSize: 16)),
                      Container(
                        width:150, 
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 60,
                          indent: 9,
                        ),
                      ),
                    ],
                  ),
                      
                          Text('Sign in with',style: TextStyle( fontSize: 16)),
//fb ,google
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        child: Image.asset('assets/fb.png'),
                      ),
                     // SizedBox(width: 10),
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/google.jpg'),
                      ),
                    ],
                  ),

                  
                  SizedBox(
                    height: 3,
                  ),

//dont have account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an account',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xfff4c505b),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'signup',
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFF58964D),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
