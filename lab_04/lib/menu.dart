import 'package:flutter/material.dart';

const TextStyle itemStyle = TextStyle(
  color: Colors.brown,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        foregroundColor: Colors.white,
        title: const Text('Dedenz Fresh Pizza Bazooka!! 🍕'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'vegetable');
            },
            child: Card(
              color: Colors.orange[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 4,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/pizza_1.png',
                    width: 40,
                  ),
                ),
                title: const Text(
                  'Vegetable Pizza 🥦🍕',
                  style: itemStyle,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'cheese');
            },
            child: Card(
              color: Colors.amber[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 4,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/pizza_2.png',
                    width: 40,
                  ),
                ),
                title: const Text(
                  'Cheese Pizza 🧀🍕',
                  style: itemStyle,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'fries');
            },
            child: Card(
              color: Colors.orange[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 4,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/fries.png',
                    width: 40,
                  ),
                ),
                title: const Text(
                  'Box of Fries 🍟✨',
                  style: itemStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}