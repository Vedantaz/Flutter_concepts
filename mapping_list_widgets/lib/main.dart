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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  var arrData = [
    {'name': 'Ved', 'year': 2024, 'branch': 'CSE', 'cgpa': '9.21'},
    {'name': 'Parth', 'year': 2027, 'branch': 'ECE', 'cgpa': '8.21'},
    {'name': 'Mohit', 'year': 2024, 'branch': 'CSE', 'cgpa': '8.01'},
  ];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          //   children: arrData.map((value) {
          // return Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(12),
          //       color: Colors
          //           .white, // Use a slightly transparent black for a softer shadow
          //       boxShadow: const [
          //         BoxShadow(
          //           color: Colors.black26,
          //           offset: Offset(2.0, 2.0),
          //           blurRadius: 3.0,
          //           spreadRadius: 2.0,
          //         ),
          //       ],
          //     ),
          //     child: Center(
          //       child: Text(value),
          //     ),
          //   ),
          // );

          child: ListView(
            children: arrData
                .map((value) =>
                    // Check if keys exist and values are strings
                    ListTile(
                      leading: const Icon(Icons.account_circle),
                      title: Text(value['name'].toString()),
                      subtitle: Text(value['cgpa'].toString()),
                      trailing: Text(value['year'].toString()),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
