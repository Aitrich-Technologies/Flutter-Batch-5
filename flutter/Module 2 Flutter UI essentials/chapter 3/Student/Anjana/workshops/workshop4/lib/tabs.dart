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
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Example'),
          bottom: TabBar(
            tabs: [
              const Tab(icon: Icon(Icons.home,),text: "home",)
              ,Tab(icon:Icon(Icons.search),text: "search",),
              Tab(icon:Icon( Icons.account_circle,),text: "profile",) // Single tab with Home icon
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
            Center(child: Text("search",style: TextStyle(fontSize: 20),),),
            Center(child: Text("profile",style: TextStyle(fontSize: 20),),)
          ],
        ),
      ),
    );
  }
}
