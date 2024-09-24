import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // var name = TextEditingController();

  // String? _storedName;

  // @override
  // void initState() {
  //   super.initState();
  //   _loadUserData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Landing Page'), // Descriptive title
      ),
      body: const Center(
        child: SingleChildScrollView(
          // Wrap content in SingleChildScrollView for potential overflow
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // TextField(
              //   controller: name,
              //   decoration: const InputDecoration(labelText: 'Name'),
              // ),
              SizedBox(height: 11),
              //             ElevatedButton(
              //               onPressed: () {
              //                 name = name.text;
              // _saveUserData(UserData(name: name));
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                     builder: (context) => LandingPage(
              //                       userData: UserData(name: name)
              //                     ),
              //                   ),
              //                 );
              //               },
              //               child: const Text('Next'),
              //             ),
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> _saveUserData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('name', name.text);
  // }

  // Future<void> _loadUserData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   _storedName = prefs.getString('name');
  //   if (_storedName != null) {
  //     name.text = _storedName!;
  //   }
  // }
}
