



import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(home: Name(currentName: 'Anjana',)));
}

class Name extends StatefulWidget {
  final String currentName;
  const Name({super.key , required this.currentName});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
 
 
  final TextEditingController controller = TextEditingController();
  @override
 void initState(){
  controller.text = widget.currentName;
  super.initState();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Name", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controller,
              maxLength: 25,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Your name",
                labelStyle: const TextStyle(color: Colors.white),
                suffixIcon: IconButton(onPressed: (){
                 
                }, icon:  Icon(
                  Icons.emoji_emotions_outlined,
                  color: Color.fromARGB(255, 114, 112, 112),
                )),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 8),
           
  
  


            const Text(
              "People will see this name if you interact with them and they don't have you saved as a contact.",
              style: TextStyle(
                color: Color.fromARGB(255, 165, 162, 162),
              ),
            ),
            const Spacer(),
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
                  

                  final name = controller.text.trim();
                  Navigator.pop( context,name);
                  
                },
                child: const Text(
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
