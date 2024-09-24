// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Calculator'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var weight_ = TextEditingController();
//   var height_ = TextEditingController();
//   var inch_ = TextEditingController();

//   var res = "";
//   var bgColor = Colors.amber[600];
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _calculateBMI() {
//     final weight = double.tryParse(weight_.text) ?? 0.0;
//     final heightFt = double.tryParse(height_.text) ?? 0.0;
//     final heightInch = double.tryParse(inch_.text) ?? 0.0;

//     if (weight > 0 && heightFt > 0 && heightInch >= 0) {
//       final totalHeightInMeters = (heightFt * 12 + heightInch) / 100;
//       final bmi = weight / (totalHeightInMeters * totalHeightInMeters);
//       setState(() {
//         res = bmi.toStringAsFixed(2);
//       });
//       var msg = "";

//       if (bmi > 25) {
//         msg = "You are overweight";
//         bgColor = Colors.orange[800];
//       } else if (bmi < 18) {
//         msg = "You are underweight.";
//         bgColor = Colors.teal[600];}
//         else{
//           msg = "You are Healthy";
//         }
//       }
//       else {
//       setState(() {
//         res = "Please enter valid weight and height values.";
//       });
//     }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text('home title'),
//       ),
//       body: Center(
//         child: Container(
//           width: 400,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'BMI',
//                 style: TextStyle(fontSize: 24),
//               ),

//               SizedBox(height: 16),

//               TextField(
//                 controller: weight_,
//                 decoration: InputDecoration(
//                   focusColor: Colors.blue,
//                   label: Text('Enter weight in Kg'),
//                   prefixIcon: Icon(Icons.line_weight),
//                 ),
//                 keyboardType: TextInputType.numberWithOptions(decimal: true),
//               ),
//               SizedBox(
//                 height: 11,
//               ),
//               TextField(
//                 controller: height_,
//                 decoration: InputDecoration(
//                   focusColor: Colors.red,
//                   label: Text('Enter height in feet'),
//                   prefixIcon: Icon(Icons.height),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(
//                 height: 11,
//               ),
//               TextField(
//                 controller: height_,
//                 decoration: InputDecoration(
//                   focusColor: Colors.green,
//                   label: Text('Enter inches in cm'),
//                   prefixIcon: Icon(Icons.height),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),

//               ElevatedButton(
//                 onPressed: _calculateBMI,
//                 child: Text(
//                   'Calculate',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green[800],
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 res,
//                 style: TextStyle(fontSize: 24),
//               ),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     var wt = weight_.text.toString();
//               //     var ft = height_.text.toString();
//               //     var inch = inch_.text.toString();

//               //     if (wt != "" && ft != "" && inch != "") {
//               //       //BMI calculation

//               //       var iwt = int.parse(wt);
//               //       var ift = int.parse(ft);
//               //       var iInch = int.parse(inch);

//               //       var tInch = (ift * 12) + iInch;

//               //       var tcm = tInch * 2.54;

//               //       var tm = tcm / 100;

//               //       var bmi = iwt / (tm * tm);

//               //       setState(() {
//               //         res = "You bmi is:  ${bmi.toStringAsFixed(2)}";
//               //       });
//               //     } else {
//               //       setState(() {
//               //         res = "Please fill all the required details !";
//               //       });
//               //     }
//               //   },
//               //   child: Text(
//               //     'Calculate',
//               //     style: TextStyle(color: Colors.white),
//               //   ),
//               //   style: ElevatedButton.styleFrom(
//               //     backgroundColor: Colors.green[800],
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
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
      home: const MyHomePage(title: 'BMI Calculator'),
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
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightFeetController = TextEditingController();
  final TextEditingController heightInchController = TextEditingController();

  String result = "";
  Color bgColor = Colors.amber[600]!;

  void _calculateBMI() {
    final weight = double.tryParse(weightController.text) ?? 0.0;
    final heightFt = double.tryParse(heightFeetController.text) ?? 0.0;
    final heightInch = double.tryParse(heightInchController.text) ?? 0.0;

    if (weight > 0 && heightFt > 0 && heightInch >= 0) {
      // Convert height from feet and inches to meters
      final totalHeightInMeters = ((heightFt * 12) + heightInch) * 0.0254;
      final bmi = weight / (totalHeightInMeters * totalHeightInMeters);
      String message;

      if (bmi > 25) {
        message = "You are overweight";
        bgColor = Colors.orange[800]!;
      } else if (bmi < 18) {
        message = "You are underweight";
        bgColor = Colors.teal[600]!;
      } else {
        message = "You are healthy";
        bgColor = Colors.green[600]!;
      }

      setState(() {
        result = "$message\nYour BMI is: ${bmi.toStringAsFixed(2)}";
      });
    } else {
      setState(() {
        result = "Please enter valid weight and height values.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          // padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'BMI Calculator',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: weightController,
                decoration: const InputDecoration(
                  labelText: 'Enter weight in Kg',
                  prefixIcon: Icon(Icons.line_weight),
                  border: OutlineInputBorder(),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: heightFeetController,
                decoration: const InputDecoration(
                  labelText: 'Enter height in feet',
                  prefixIcon: Icon(Icons.height),
                  border: OutlineInputBorder(),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: heightInchController,
                decoration: const InputDecoration(
                  labelText: 'Enter height in inches',
                  prefixIcon: Icon(Icons.height),
                  border: OutlineInputBorder(),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _calculateBMI,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[800],
                  // padding:
                  //     const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                ),
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                result,
                style: TextStyle(fontSize: 22, color: bgColor),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
