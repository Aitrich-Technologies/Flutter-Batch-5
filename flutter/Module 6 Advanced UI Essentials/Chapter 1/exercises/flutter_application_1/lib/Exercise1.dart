import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}
class _Exercise1State extends State<Exercise1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Bottom Sheet Sample"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message, size: 20)),
              Tab(icon: Icon(Icons.call, size: 20)),
              Tab(icon: Icon(Icons.settings, size: 20)),
            ], ), ),
        body: TabBarView(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(5),
                    ),
                    builder: (BuildContext context) {
                      return Container(
                        height: 300,
                        width: 500,
                        color: const Color.fromARGB(255, 249, 192, 6),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Column(
                              children: [
                                Text("modal Bottom sheet"),
                                SizedBox(height: 5),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("close Bottom sheet"),
                                ),
                              ], ), ), ), );  }, );},
                child: Text("showmodalbottomsheet"),
              ),
            ),
            Container(child: Center(child: Text("call"))),
            Container(child: Center(child: Text("settings"))),
          ],
        ),
      ),
    );
  }
}
