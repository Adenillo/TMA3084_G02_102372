import 'package:flutter/material.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetable Pizza'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Vegetable Pizza Screen!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}