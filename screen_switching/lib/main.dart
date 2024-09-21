import 'package:flutter/material.dart';
import 'package:screen_switching/landingPage.dart';
import 'package:screen_switching/splash_screen.dart';
import 'package:screen_switching/user_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final UserData userData;

  const MyHomePage({super.key, required this.userData});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double minValues = 0.0;
  double maxValues = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Screens'),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome, ${widget.userData.name}',
              style: const TextStyle(color: Colors.pink),
            ),
            const SizedBox(
              height: 11,
              width: 400,
            ),
            RangeSlider(
              values: RangeValues(minValues, maxValues),
              min: 0.0,
              max: 100.0,
              divisions: 5,
              labels: RangeLabels(
                  minValues.toStringAsFixed(1), maxValues.toStringAsFixed(1)),
              onChanged: (RangeValues values) {
                setState(() {
                  minValues = values.start;
                  maxValues = values.end;
                });
              },
            ),
            const SizedBox(height: 16),
            Text(
              'Selected Range: ${minValues.toStringAsFixed(1)} - ${maxValues.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LandingPage(),
                    ),
                  );
                },
                child: const Text('Click me')),
          ],
        ),
      ),
    );
  }
}
