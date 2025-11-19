import 'package:flutter/material.dart';
import 'package:whatapp/profile.dart';

class About extends StatefulWidget {
  final String currentabout;
  const About({super.key,required this.currentabout});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
 
  TextEditingController aboutcontrol = TextEditingController();
   @override
 void initState(){
  aboutcontrol.text = widget.currentabout;
  super.initState();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text("about", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(onTap: () {
              
            },
              child: TextField(
                controller: aboutcontrol,
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  labelText: "currently set to ",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 85, 84, 84),
                  ),
                  suffixIcon: Icon(Icons.edit, color: Colors.green),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 380.0),
            child: Text(
              "Select About",
              style: TextStyle(color: const Color.fromARGB(255, 85, 84, 84)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              title: Text("Available", style: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              title: Text("At School", style: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              title: Text(
                "At the Movies",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              title: Text("At work", style: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              title: Text("At the gym", style: TextStyle(color: Colors.white)),
            ),
          ),
          Spacer(),
          SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                 
                  final about = aboutcontrol.text.trim();
                   Navigator.pop(context,about);
                 
                },
                child: const Text(
                  "Done",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }
  
}
