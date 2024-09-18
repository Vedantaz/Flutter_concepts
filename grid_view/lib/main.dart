import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        // body: GridView.extent(
        //   maxCrossAxisExtent: 100,
        //   mainAxisSpacing: 11,
        //   crossAxisSpacing: 11,
        //   children: [
        //     Container(
        //       color: arrColors[0],
        //     ),
        //     Container(
        //       color: arrColors[1],
        //     ),
        //     Container(
        //       color: arrColors[2],
        //     ),
        //     Container(
        //       color: arrColors[3],
        //     ),
        //     Container(
        //       color: arrColors[4],
        //     ),
        //     Container(
        //       color: arrColors[5],
        //     ),
        //     Container(
        //       color: arrColors[6],
        //     ),
        //     Container(
        //       color: arrColors[7],
        //     ),
        //     Container(
        //       color: arrColors[8],
        //     ),
        //   ],
        // ),

        // code of count

        // body: GridView.count(
        //   crossAxisCount: 4,
        //   mainAxisSpacing: 11,
        //   crossAxisSpacing: 11,
        //   children: [
        //     Container(
        //       color: arrColors[0],
        //     ),
        //     Container(
        //       color: arrColors[1],
        //     ),
        //     Container(
        //       color: arrColors[2],
        //     ),
        //     Container(
        //       color: arrColors[3],
        //     ),
        //     Container(
        //       color: arrColors[4],
        //     ),
        //     Container(
        //       color: arrColors[5],
        //     ),
        //     Container(
        //       color: arrColors[6],
        //     ),
        //     Container(
        //       color: arrColors[7],
        //     ),
        //     Container(
        //       color: arrColors[8],
        //     ),
        //   ],
        // ),

        // when data is dynamic
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11),
            itemCount: arrColors.length,
            itemBuilder: (context, index) {
              return Container(
                color: arrColors[index],
              );
            }));
  }
}
