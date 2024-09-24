import 'package:flutter/material.dart';
import 'package:shared_pref_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white), // Se
        ),
      ),
      home: const MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void goToLoginPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center everything vertically
              children: [
                // User icon at the top
                const Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.blue,
                ),
                const SizedBox(
                    height: 20), // Space between icon and email field

                // Email TextField
                SizedBox(
                  width: 400,
                  child: TextField(
                    keyboardType: TextInputType
                        .emailAddress, // Keyboard type set to email
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email), // Icon for email
                      hintText: 'Enter your email',
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors
                          .white, // Background color inside the text field
                    ),
                  ),
                ),

                const SizedBox(height: 20), // Space between fields

                // Password TextField
                SizedBox(
                  width: 400,
                  child: TextField(
                    obscureText: true, // For hiding the password input
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock), // Icon for password
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30), // Space before the button

                // "Enter" button
                ElevatedButton(
                  onPressed: goToLoginPage,
                  // Action when button is pressed

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Blue background color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15,
                    ), // Padding inside the button
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    'Enter',
                    style: TextStyle(
                      color: Colors.white, // White text color
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
