import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_pref_app/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  // void initState() {
  //   super.initState();

  //   Future.delayed(const Duration(seconds: 2), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => const MyHomePage(title: 'Shared-Preference')),
  //     );
  //   });
  // }

  void goToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const MyHomePage(title: 'Dashboard')),
    );
  }

  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers the column
            children: [
              // Text above the image
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30, // Adjust the font size
                  fontWeight: FontWeight.bold, // Bold text
                  color: Colors.white, // White font color
                ),
              ),
              const SizedBox(
                  height: 20), // Adds space between the text and image
              // Image with animated opacity
              isLoggedIn
                  ? ElevatedButton(
                      onPressed: () {
                        goToHomePage();
                      },
                      child: Text('Go to Home'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        TextField(),
                      ],
                    ),

              AnimatedOpacity(
                opacity: 1.0, // Initial opacity
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: Image.asset(
                  '../assets/img/addon.jpg', // Replace with your logo path
                  width: 200,
                  height: 200,
                ),
              ),
              ElevatedButton(
                onPressed: goToHomePage,
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
