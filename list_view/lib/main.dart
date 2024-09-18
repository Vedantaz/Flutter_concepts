import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // actually runs the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
    var names = ['Raman', 'Raghavan', 'Vedant', 'Jitu', 'Viru', 'Ani', 'Jassi'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: const Text('Hello'),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("$index"),
              title: Text(names[index]),
              subtitle: const Text('Navbar'),
              trailing: const Icon(Icons.add),
            );
          },
          itemCount: names.length,
          separatorBuilder: (context, index) {
            return const Divider(height: 1);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
