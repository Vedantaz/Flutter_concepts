import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        title: 'DashBoard',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const MyHomePage(title: ' DashBoard'),
      ),
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
  var emailText = TextEditingController();
  var passText = TextEditingController();
  final _numberController = TextEditingController();

  InputBorder _enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: const BorderSide(width: 2),
  );
  final InputBorder _errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: const BorderSide(width: 2, color: Colors.red),
  );
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _numberController.addListener(_onNumberChanged);
  }

  @override
  void dispose() {
    _numberController.removeListener(_onNumberChanged);
    super.dispose();
  }

  void _onNumberChanged() {
    final text = _numberController.text;
    if (text.length < 10) {
      setState(() {
        _errorMessage = 'Please enter 10 digits.';
        _enabledBorder = _errorBorder;
      });
    } else {
      setState(() {
        _errorMessage = '';
        _enabledBorder = OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: const BorderSide(width: 2),
        );
      });
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 217, 125, 125),
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailText,
                  cursorRadius: const Radius.circular(11),
                  // enabled: false,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        // color: Colors.blueGrey,
                        width: 4,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.blueGrey,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        // color: Colors.blueGrey,
                        width: 2,
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 26, 17, 28),
                    ),
                  ),
                ),
                Container(
                  height: 11,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: _numberController,
                  decoration: InputDecoration(
                    hintText: "Enter your 10 digit number",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    disabledBorder: _enabledBorder,
                    enabledBorder: _enabledBorder,
                    errorText: _errorMessage.isNotEmpty ? _errorMessage : null,
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 38, 3, 0),
                        )),
                  ),
                ),
                if (_errorMessage.isNotEmpty)
                  Text(
                    _errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                Container(
                  height: 11.0,
                ),
                TextField(
                  controller: passText,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        // color: Colors.blueGrey,
                        width: 4,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.blueGrey,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        // color: Colors.blueGrey,
                        width: 2,
                      ),
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Color.fromARGB(255, 38, 3, 0),
                        )),
                  ),
                ),
                Container(
                  height: 11.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      String uEmail = emailText.text.toString();
                      String uPass = passText.text.toString();

                      print("Email is: $uEmail & password is : $uPass");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Login',
                    ))
              ],
            )),
      ),
    );
  }
}
