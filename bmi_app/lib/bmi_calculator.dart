import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();
  double _bmi = 0.0;
  String _bmiCategory = '';

  @override
  // void initState() {
  //   super.initState();
  //   _loadUserData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _weightController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(labelText: 'Weight (kg)'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _heightController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(labelText: 'Height (m)'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: const Text('Calculate BMI'),
            ),
            const SizedBox(height: 24),
            Text(
              'BMI: ${_bmi.toStringAsFixed(2)}',
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text('Category: $_bmiCategory'),
          ],
        ),
      ),
    );
  }

  void _calculateBMI() {
    final weight = double.tryParse(_weightController.text) ?? 0.0;
    final height = double.tryParse(_heightController.text) ?? 0.0;

    if (weight > 0 && height > 0) {
      final bmi = weight / (height * height);
      setState(() {
        _bmi = bmi;
        _bmiCategory = _getBMICategory(bmi);
      });
    } else {
      // Handle invalid input (e.g., show an error message)
    }
  }

  String _getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  // Future<void> _loadUserData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   _weightController.text = prefs.getString('weight') ?? '';
  //   _heightController.text = prefs.getString('height') ?? '';
  // }

  // void _saveUserData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('weight', _weightController.text);
  //   await prefs.setString('height', _heightController.text);
  // }
}
