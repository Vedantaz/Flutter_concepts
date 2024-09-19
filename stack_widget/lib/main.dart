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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, // Use a primary color for consistency
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text('Dashboard'),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            width: 100,
            child: Container(
              color: Colors.blue, // Set the color here
            ),
          ),
          Stack(
            // alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                color: const Color.fromARGB(255, 161, 247, 0),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(21),
                // ),
              ),
              Positioned(
                left: 21,
                right: 21,
                child: Container(
                  width: 200,
                  height: 250,
                  color: const Color.fromARGB(255, 126, 3, 89),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(21),
                  // ),
                ),
              ),

              // Text(
              //   'Overlay Text',
              //   style: TextStyle(
              //       fontSize: 24,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white),
              // ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement your action here
          print('FloatingActionButton pressed');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
