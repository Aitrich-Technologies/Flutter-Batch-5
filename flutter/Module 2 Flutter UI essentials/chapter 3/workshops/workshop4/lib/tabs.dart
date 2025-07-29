import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Example'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)), // Single tab with Home icon
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Home',
                style: TextStyle(fontSize: 24), // Centered text for the tab
              ),
            ),
          ],
        ),
      ),
    );
  }
}
