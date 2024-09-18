import 'package:custom_fonts/ui_helper/util.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              fontFamily: 'FontMain'),
          headlineSmall: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.normal,
              fontFamily: 'FontMain'),
          headlineLarge: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w900,
              fontFamily: 'FontMain'),
        ),
      ),
      home: const MyHomePage(title: 'Flutter'),
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
        backgroundColor: Colors.amber,
        title: Text(
          'Text',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Column(children: [
        const Text(
          'Hey Vedant',
          style: TextStyle(fontFamily: 'FontMain'),
        ),
        Text(
          'Hey Ritesh',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          'Hey Shammi',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.green,
              ),
        ),
        Text(
          'Hey Mona',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.orange),
        ),
        Text(
          'Hey Package',
          style: mTextStyle24(),
        ),
        Text(
          'Hey Package - 12',
          style: mTextStyle12(),
        ),
      ]),
    );
  }
}
