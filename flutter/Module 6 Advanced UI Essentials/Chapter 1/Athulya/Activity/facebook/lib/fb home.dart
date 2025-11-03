import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Facebook", style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold)),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Icon(Icons.message_outlined),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.live_tv)),
              Tab(icon: Icon(Icons.add_box_outlined)),
              Tab(icon: Icon(Icons.store)),
              Tab(icon: Icon(Icons.notifications_none)),
              Tab(icon: Icon(Icons.menu)),
            ],
          ),
        ),
        
       
      ),
    );
  }
}
