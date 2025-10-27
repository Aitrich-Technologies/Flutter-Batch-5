// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: Exercise3()));
//}

// class Exercise3 extends StatefulWidget {
//   const Exercise3({super.key});

//   @override
//   State<Exercise3> createState() => _Exercise3State();
// }

// class _Exercise3State extends State<Exercise3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey,
//         title: Text("listview with end Drawer"),
//       ),
//       endDrawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               child: Text("drawer header"),
//               decoration: BoxDecoration(color: Colors.blue),
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text("Account"),
//               onTap: () {},
//             ),
//             ListTile(leading: Icon(Icons.settings), title: Text("settings")),
//             ListTile(
//               leading: Icon(Icons.question_mark_rounded),
//               title: Text("Help"),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),

//       body: ListView(
//         children: [
//           Card(child: ListTile(title: Text("item 1"))),
//           Card(child: ListTile(title: Text("item 2"))),
//           Card(child: ListTile(title: Text("item 3"))),
//           Card(child: ListTile(title: Text("item 4"))),
//           Card(child: ListTile(title: Text("item 5"))),
//           Card(child: ListTile(title: Text("item 6"))),
//           Card(child: ListTile(title: Text("item 7"))),
//           Card(child: ListTile(title: Text("item 8"))),
//           Card(child: ListTile(title: Text("item 9"))),
//           Card(child: ListTile(title: Text("item 10"))),
//           Card(child: ListTile(title: Text("item 11"))),
//           Card(child: ListTile(title: Text("item 12"))),
//           Card(child: ListTile(title: Text("item 13"),))
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyGridView(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView.builder Example")),
      body: GridView.builder(
        itemCount: 20, // total number of boxes
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // number of columns
          crossAxisSpacing: 10, // horizontal space
          mainAxisSpacing: 10, // vertical space
        ),
        itemBuilder: (context, index) {
          return Container(
       color: Colors.primaries[index % Colors.primaries.length], // colorful boxes
            child: Center(
              child: Text(
                "Item $index",
                style: TextStyle(color: Colors.white, 
                fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
