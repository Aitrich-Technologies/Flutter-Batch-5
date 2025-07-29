
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Home Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
