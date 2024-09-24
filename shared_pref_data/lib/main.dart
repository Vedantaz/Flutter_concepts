import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  TextEditingController nameController = TextEditingController();
  static const String KEYNAME = 'name';
  var nameValue = 'No value saved';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Shared pref'),
      ),
      body: Center(
          child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.none,
              autocorrect: true,
              enableSuggestions: true,
              decoration: InputDecoration(
                hintText: 'Enter your value here...',
                hintStyle: TextStyle(color: Colors.grey[600]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            ElevatedButton(
              onPressed: () async {
                var name = nameController.text.toString();

                var prefs = await SharedPreferences.getInstance();
                prefs.setString(KEYNAME, name);
              },
              child: const Text(
                'Save',
                selectionColor: Color.fromARGB(255, 0, 17, 251),
              ),
            ),
            const SizedBox(height: 20),
            Text(nameValue),
          ],
        ),
      )),
    );
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();

    // Retrieve the value from SharedPreferences using the defined key
    var getName = prefs.getString(KEYNAME);

    // Store the retrieved value in nameValue

    // Optionally print the value
    nameValue = getName ?? 'No value saved';
    // print('Stored name: $getName');

    setState(() {
      nameValue = getName ?? 'No value saved';
    });
  }
}
