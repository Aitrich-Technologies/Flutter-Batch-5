import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,title: Text("Home",
      style: TextStyle(fontSize: 20,color: Colors.white),
      ),actions: [IconButton (icon:Icon(Icons.notifications), iconSize: 20,color: Colors.black, onPressed:(){
        Navigator.push (context, MaterialPageRoute(builder: (context)=>second()));
      }),
      ],centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [Padding(padding: EdgeInsets.symmetric(vertical: 2,horizontal: 2)
        ),Image.asset("image/chevrolet-corvette-zr1-coupe-001.jpg"),SizedBox(height: 3,width: 5,),
        Image.asset("image/pexels-mikebirdy-3729464.jpg"),SizedBox(height: 3,width: 5,),
        Image.asset("image/photo-1494976388531-d1058494cdd8.jpeg")
        ],),
      ),
    );
  }
}
class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orange,title: Text("Notification",style: TextStyle(fontSize: 20),
    ),centerTitle: true,
    ),body: Column(children: [Padding(padding: EdgeInsets.all(5),
    ),
      Card(
        child: ListTile(leading: const Icon(Icons.account_circle),
        title:  Text("Notification"),
        trailing:  Icon(Icons.delete),
        ), ),
         Card(
           child: ListTile(leading: Icon(Icons.account_circle),
           title: Text("Notification"),
           trailing: Icon(Icons.delete),
           ),),
         Card(
           child: ListTile(leading: Icon(Icons.account_circle),
           title: Text("Notification"),
           trailing: Icon(Icons.delete),
           ),),
           Card(
           child: ListTile(leading: Icon(Icons.account_circle),
           title: Text("Notification"),
           trailing: Icon(Icons.delete),
           ) ),
           Card(
           child: ListTile(leading: Icon(Icons.account_circle),
           title: Text("Notification"),
           trailing: Icon(Icons.delete),
           ),),
           Card(
           child: ListTile(leading: Icon(Icons.account_circle),
           title: Text("Notification"),
           trailing: Icon(Icons.delete),
           ), ),
           Card(
           child: ListTile(leading: Icon(Icons.account_circle),
           title: Text("Notification"),
           trailing: Icon(Icons.delete),
           ),), ], ), ); }}