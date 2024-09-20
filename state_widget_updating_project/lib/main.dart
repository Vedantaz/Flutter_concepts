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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  // var res = no1Controller + no2Cntroller;

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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
              ),
              Container(height: 15),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(
                          no1Controller.text.toString(),
                        );
                        var no2 = int.parse(
                          no2Controller.text.toString(),
                        );
                        var res = no1 + no2;
                        result = "The sum of $no1 & $no2 is $res";

                        setState(() {});
                      },
                      child: const Text('Addition'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(
                          no1Controller.text.toString(),
                        );
                        var no2 = int.parse(
                          no2Controller.text.toString(),
                        );
                        var diff = no1 - no2;
                        result = "The subtraction of $no1 & $no2 is $diff";

                        setState(() {});
                      },
                      child: const Text('Sub'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(
                          no1Controller.text.toString(),
                        );
                        var no2 = int.parse(
                          no2Controller.text.toString(),
                        );
                        var res = no1 / no2;
                        result =
                            "The division of $no1 & $no2 is ${res.toStringAsFixed(2)}";

                        setState(() {});
                      },
                      child: const Text('Div'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(
                          no1Controller.text.toString(),
                        );
                        var no2 = int.parse(
                          no2Controller.text.toString(),
                        );
                        var res = no1 * no2;
                        result = "The multiplication of $no1 & $no2 is $res";

                        setState(() {});
                      },
                      child: const Text('Mul'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  result,
                  style: const TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
