import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_pref_app/MyHomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    // Delayed for 5 seconds to simulate splash screen
    Future.delayed(const Duration(seconds: 2), () {
      if (isLoggedIn) {
        // If the user is already logged in, navigate to Home screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(title: 'Dashboard')),
        );
      } else {
        // Otherwise, go to Login screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to the App',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/img/addon.jpg', // Adjust your asset path
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
