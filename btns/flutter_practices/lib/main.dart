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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 255, 255)),
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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          "Flutter Btn",
          style: TextStyle(color: Colors.white), // Set the font color to white
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            // horizontally aligned content
            child: Column(
              children: [
                // Expanded(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       InkWell(
                //         child: Container(
                //           padding: const EdgeInsets.only(top: 10.0),
                //           width: 200,
                //           height: 200,
                //           color: const Color.fromARGB(255, 15, 7, 255),
                //           child: Center(
                //             child: InkWell(
                //               onTap: () {
                //                 print("Text Widget Wrapped");
                //               },
                //               child: const Text(
                //                 'Text Button',
                //                 style: TextStyle(
                //                     fontSize: 24,
                //                     fontWeight: FontWeight.w700,
                //                     color: Color.fromARGB(255, 255, 255, 255)),
                //               ),
                //             ),
                //           ),
                //         ),
                //         onDoubleTap: () {
                //           print('Double tap pressed');
                //         },
                //         onLongPress: () {
                //           print('Long pressed is clicked');
                //         },
                //         onTap: () {
                //           print('Single tap pressed');
                //         },
                //       ),
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 200,
                          height: 200,
                          color: const Color.fromARGB(255, 242, 182, 4),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 200,
                          height: 200,
                          color: const Color.fromARGB(255, 4, 242, 198),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 200,
                          height: 200,
                          color: const Color.fromARGB(255, 7, 144, 119),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 200,
                          height: 200,
                          color: const Color.fromARGB(255, 28, 4, 242),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 200,
                          height: 200,
                          color: const Color.fromARGB(255, 242, 4, 4),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 200,
                          height: 200,
                          color: const Color.fromARGB(255, 208, 9, 162),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 200,
                          height: 200,
                          color: const Color.fromARGB(255, 242, 182, 4),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 200,
                          height: 200,
                          color: const Color.fromARGB(255, 163, 4, 242),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  // width: 100,
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 200,
                  color: Colors.black,
                ),

                // these are the button types in the flutter
                // Expanded(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       ElevatedButton(
                //         child: const Text('Text Button'),
                //         onPressed: () {
                //           print('Elevated Button pressed');
                //         },
                //         onLongPress: () {
                //           print('Long pressed is clicked');
                //         },
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
