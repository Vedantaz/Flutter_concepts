import 'package:flutter/material.dart';
import 'dart:math';

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
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    List<Color> arrColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.pink,
      Colors.purple,
      Colors.orange,
      Colors.grey,
      Colors.black
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text('Dashboard'),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const MyListView(),
          const SizedBox(height: 10.0),
          MyGridView(arrColors: arrColors),
        ],
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(11.0),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.brown,
                    ),
                  ),
                )),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  final List<Color> arrColors;

  const MyGridView({super.key, required this.arrColors});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,
        mainAxisSpacing: 11,
        crossAxisSpacing: 11,
      ),
      itemCount: arrColors.length,
      itemBuilder: (context, index) => Container(
        color: arrColors[index],
        child: Center(
          child: Text(
            'Item ${index + 1}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
