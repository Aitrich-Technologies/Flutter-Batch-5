import 'package:flutter/material.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});
  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  void_showmyBottomsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.yellow,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 90, vertical: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Modal BottomSheet",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("close BottomSheet"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Bottom sheet"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.message), text: "Message"),
                Tab(icon: Icon(Icons.call), text: "Call"),
                Tab(icon: Icon(Icons.settings), text: "Settings"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.white,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      void_showmyBottomsheet(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    child: Text("ShowModalBottomsheet"),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Center(child: Text("Calls Tab")),
              ),
              Container(
                color: Colors.white,
                child: Center(child: Text("Settings Tab")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
