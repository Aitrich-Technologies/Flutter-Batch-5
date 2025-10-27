import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: Home(),));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6, child: Scaffold(appBar: AppBar(backgroundColor: const Color.fromARGB(255, 253, 253, 253),title: Text("facebook",style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 21, 95, 224),
    ),
    
  
    ),bottom: TabBar(tabs: [
      Icon(Icons.home,),
       Icon(Icons.smart_display_rounded,),
        Icon(Icons.control_point_duplicate_sharp,),
         Icon(Icons.groups_2_rounded,),
          Icon(Icons.notification_important_sharp,),
           Icon(Icons.menu,),

    ],indicatorColor: const Color.fromARGB(255, 4, 119, 214),unselectedLabelColor: Colors.grey,indicatorWeight: 2,
    ),actions: [Icon(Icons.search),SizedBox(width: 15,),Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.message),
    )],
    ),
    body: TabBarView(children: [Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 690.0),
        child: Row(
            children: [
              const Icon(Icons.account_circle, size: 60,color: Colors.grey,),
              const SizedBox(width: 10),
              // Expanded makes TextField take the remaining width
              Expanded(
                child: TextField(
                  decoration: InputDecoration(fillColor: const Color.fromARGB(122, 158, 158, 158),filled: true,
                    labelText: "What's on your mind?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),
    ),]
    )
    ));
  }
}