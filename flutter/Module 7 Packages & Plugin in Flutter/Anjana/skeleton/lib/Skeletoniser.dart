import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

class Skeletoniser extends StatefulWidget {
  const Skeletoniser({super.key});
    State<Skeletoniser> createState() => _SkeletoniserState();
}
class _SkeletoniserState extends State<Skeletoniser> {
  bool isloading = true;
@override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isloading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seletonizer app"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Skeletonizer(
        enabled: isloading,
        child: Column(
          children: [
            ListTile(
              title: Text("item1"),
              subtitle: Text("Description of item 1"),
              trailing: Icon(Icons.mark_email_read),
              leading: Icon(Icons.airplanemode_inactive_rounded),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("item2"),
              subtitle: Text("Description of item 2"),
              trailing: Icon(Icons.abc),
              leading: Icon(Icons.home),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("item3"),
              subtitle: Text("Description of item 3"),
              trailing: Icon(Icons.handshake_sharp),
              leading: Icon(Icons.build_circle),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("item4"),
              subtitle: Text("Description of item 4"),
              trailing: Icon(Icons.link),
              leading: Icon(Icons.fire_truck_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
