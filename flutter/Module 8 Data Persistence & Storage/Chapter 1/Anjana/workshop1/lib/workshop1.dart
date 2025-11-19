import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  TextEditingController _controller = TextEditingController();
  List<String> tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  void _loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      tasks = prefs.getStringList('tasks') ?? [];
    });
  }

  void _saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('tasks', tasks);
  }

  void _addTask() {
    String newTask = _controller.text;
    if (newTask.isNotEmpty) {
      setState(() {
        tasks.add(newTask);
        _controller.clear();
        _saveTasks();
      });
    }
  }

  //add remove logic

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager'),
        backgroundColor: Colors.orangeAccent, // Change the color here
      ),
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(labelText: 'New Task'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add_task),
                  onPressed: _addTask,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Expanded(
                    child: ListTile(
                      
                      title: Text(tasks[index]),
                      
                     //delete button logic
                    ),
                  ),IconButton(onPressed:(){
                    deletetask(index);
                  }, icon: Icon(Icons.delete))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  void deletetask(int index) async{
    setState(() {
      tasks.removeAt(index);
    });
    _saveTasks();
  }
}


// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main(){
//   runApp(MaterialApp(home: DeleteDataScreen(),));
// }


// class DeleteDataScreen extends StatefulWidget {
//   @override
//   _DeleteDataScreenState createState() => _DeleteDataScreenState();
// }

// class _DeleteDataScreenState extends State<DeleteDataScreen> {
//   String? _storedValue;

//   @override
//   void initState() {
//     super.initState();
//     _loadData();
//   }

//   Future<void> _loadData() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _storedValue = prefs.getString('myKey'); // Replace 'myKey' with your actual key
//     });
//   }

//   Future<void> _deleteSpecificData() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.remove('myKey'); // Replace 'myKey' with the key to delete
//     _loadData(); // Reload data to reflect the change
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Delete SharedPreferences Data')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Stored Value: ${_storedValue ?? "No value stored"}'),
//             ElevatedButton(
//               onPressed: _deleteSpecificData,
//               child: Text('Delete Specific Data'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }