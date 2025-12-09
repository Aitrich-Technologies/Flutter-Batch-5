import 'package:flutter/material.dart';

class Drag2 extends StatefulWidget {
  const Drag2({super.key});

  @override
  State<Drag2> createState() => _Drag2State();
}

class _Drag2State extends State<Drag2> {
  List<String> items = ["Dog", "Cat", "Rabbit", "giraffee", "Lion"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Drag and Drop"),
      ),
      body: ReorderableListView(
        children: List.generate(items.length, (index) {
          return Card(
            key: ValueKey(items[index]),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              leading: ReorderableDragStartListener(
                child: Icon(Icons.drag_handle, color: Colors.grey),
                index: index,
              ),

              title: Text(
                items[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              tileColor: const Color.fromARGB(255, 255, 255, 255),
            ),
          );
        }
        ),
        
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final Items = items.removeAt(oldIndex);
            items.insert(newIndex, Items);
          }
          );
        },
      ),

    );
  }
}


