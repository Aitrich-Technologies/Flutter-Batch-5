import 'package:flutter/material.dart';

class Drag1 extends StatefulWidget {
  const Drag1({super.key});

  @override
  State<Drag1> createState() => _DragState();
}

class _DragState extends State<Drag1> {
  // ✅ Keep a copy of the original order
  final List<Map<String, dynamic>> originalItems = [
    {"icon": Icons.drag_indicator_outlined, 'title': "Dog"},
    {"icon": Icons.drag_indicator_outlined, 'title': "Cat"},
    {"icon": Icons.drag_indicator_outlined, 'title': "Rabbit"},
    {"icon": Icons.drag_indicator_outlined, 'title': "Lion"},
  ];

  // This is the actual list you reorder
  late List<Map<String, dynamic>> items;

  @override
  void initState() {
    super.initState();
    items = List.from(originalItems); // copy original to items
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drag1 and Drop"),
        backgroundColor: Colors.indigoAccent,
      ),

      body: Center(
        child: ReorderableListView.builder(
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              key: ValueKey(item),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                title: Text(item['title']),
                leading: Icon(item['icon']),
              ),
            );
          },
          itemCount: items.length,
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (oldIndex < newIndex) newIndex -= 1;
              final item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
        ),
      ),

      // ✅ Reset button
      floatingActionButton: FloatingActionButton(
        onPressed: reset,
        backgroundColor: Colors.indigoAccent,
        child: const Icon(Icons.refresh),
      ),
    );
  }

  void reset() {
    setState(() {
      items = List.from(originalItems); // reset to original order
    });
  }
}
