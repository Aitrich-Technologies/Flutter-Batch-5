import 'package:flutter/material.dart';

class Drag extends StatefulWidget {
  const Drag({super.key});

  @override
  State<Drag> createState() => _DragState();
}

class _DragState extends State<Drag> {
  List<Map<String, dynamic>> items = [
    {"icon": Icons.drag_indicator_outlined, 'title': "Dog"},
    {"icon": Icons.drag_indicator_outlined, 'title': "Cat"},
    {"icon": Icons.drag_indicator_outlined, 'title': "Rabbit"},
    {"icon": Icons.drag_indicator_outlined, 'title': "Lion"},
  ];
  late List<Map<String,dynamic>> oldlist;
  @override
  void initState(){
    super.initState();
    oldlist=List.from(items);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag and Drop"),
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
          onReorder: (oldindex , newindex){
            setState(() {
              if(oldindex<newindex) newindex -= 1;
              final item = items.removeAt(oldindex);
              items.insert(newindex,item);
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: reset,child: Icon(Icons.refresh,),),
    );
  }

  void reset() {
    setState(() {
      items = List.from(oldlist);
    });
  }
}
