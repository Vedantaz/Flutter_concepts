import 'package:flutter/material.dart';

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
      color: Colors.white,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title: Text(widget.title),
      ),
      body: RichText(
        text: const TextSpan(
          style: TextStyle(color: Colors.grey, fontSize: 24),
          children: <TextSpan>[
            TextSpan(
              text: 'Hello',
            ),
            TextSpan(
              text: 'World !',
              style: TextStyle(
                  color: Color.fromARGB(255, 144, 0, 0), fontSize: 36),
            ),
            TextSpan(
              text: ', Welcome',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 120, 36),
                fontSize: 36,
                fontWeight: FontWeight.bold,
                fontFamily: 'FontMain',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
