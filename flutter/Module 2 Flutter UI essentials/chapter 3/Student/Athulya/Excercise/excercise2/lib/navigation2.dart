import 'package:flutter/material.dart';

class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.green,title: Text("Home page",
    style: TextStyle(fontSize: 20),
    ),centerTitle: true,
    ),body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green), 
      onPressed:(){
        Navigator.pushNamed(context,'/second');
      }, child: Text("notification"),
      ),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.teal),
       onPressed:(){
        Navigator.pushNamed(context, '/Third');
       },child: Text("Profile"))
      ],
    ),),
    );
  }
}

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.red,title: Text("Notification"),centerTitle: true,
    ),body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red), 
    onPressed:(){
      Navigator.pop(context);
    }, child: Text("Back to Home page")
    )
    ],
    ),
    ),
    );
  }
}

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orange,title: Text("profile"),centerTitle: true,
    ),body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [ElevatedButton(style:ElevatedButton.styleFrom (backgroundColor: Colors.blue),
    onPressed: () { Navigator.pop(context); },child: Text("Back to Home page"),
        )
        ],),),
    );
  }
}