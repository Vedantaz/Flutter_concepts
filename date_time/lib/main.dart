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
  callBack() {
    print("Clicked !!");
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   'Current date:${DateFormat('yMMMMEEEEd').format(time)}, and
              // this is manual format : ${time.year}/${time.month}/${time.day} &
              //current time: ${time.hour}.${time.minute}.${time.second}',
              //   style: const TextStyle(fontSize: 24),
              // ),
              const Text('Select date', style: TextStyle(fontSize: 12)),
              ElevatedButton(
                  onPressed: () async {
                    // setState(() {});
                    DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2025),
                    );
                    if (datePicked != null) {
                      print(
                          'Date picked: ${datePicked.day} - ${datePicked.month} - ${datePicked.year}');
                    }
                  },
                  child: const Text('Select Date')),
              Container(
                height: 20,
              ),
              Container(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.dial,
                    );
                    if (pickedTime != null) {
                      print(
                          'Time picked: ${pickedTime.hour}.${pickedTime.minute}');
                    }
                  },
                  child: const Text('Select time')),
              ElevatedButton(onPressed: callBack, child: const Text(' Push '))
            ],
          ),
        ),
      ),
    );
  }
}
