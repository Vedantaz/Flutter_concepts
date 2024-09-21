import 'dart:async';

import 'package:flutter/material.dart';
import 'package:screen_switching/landingPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LandingPage()));
    });
  }

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
                'Screens',
                style: TextStyle(
                  fontSize: 30, // Adjust the font size
                  fontWeight: FontWeight.bold, // Bold text
                  color: Colors.white, // White font color
                ),
              ),
              const SizedBox(
                  height: 20), // Adds space between the text and image
              // Image with animated opacity
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
            ],
          ),
        ),
      ),
    );
  }
}
