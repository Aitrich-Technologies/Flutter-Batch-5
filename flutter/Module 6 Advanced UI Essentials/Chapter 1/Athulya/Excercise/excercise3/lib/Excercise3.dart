import 'package:flutter/material.dart';

class Enddrawer12 extends StatefulWidget {
  const Enddrawer12({super.key});
  @override
  State<Enddrawer12> createState() => _Enddrawer12State();
}
class _Enddrawer12State extends State<Enddrawer12> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget buildListItem(String title) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 20)),
      onTap: () {},
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("List View With end drawer"),
        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(Icons.line_weight_sharp),
          ),
        ],
      ),
      body: ListView(
        children: [
          buildListItem("Item 1"),
          buildListItem("Item 2"),
          buildListItem("Item 3"),
          buildListItem("Item 4"),
          buildListItem("Item 5"),
          buildListItem("Item 6"),
          buildListItem("Item 7"),
          buildListItem("Item 8"),
          buildListItem("Item 9"),
          buildListItem("Item 10"),
        ],
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.zero),
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("End Drawer"),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
            ),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
      ),
    );
  }
}
