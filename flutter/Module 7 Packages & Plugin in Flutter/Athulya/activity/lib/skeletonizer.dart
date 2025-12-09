
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';


class Skeleton1 extends StatefulWidget {
  const Skeleton1({super.key});

  @override
  State<Skeleton1> createState() => _Skeleton1State();
}

class _Skeleton1State extends State<Skeleton1> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
       Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text(
          "Skeleton1 App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Skeletonizer(
        enabled: isLoading,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Item 0"),
                subtitle: Text("Description of Item 0"),
                trailing: Icon(Icons.chat),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.wifi),
                title: Text("Item 1"),
                subtitle: Text("Description of Item 1"),
                trailing: Icon(Icons.abc),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Item 2"),
                subtitle: Text("Description of Item 2"),
                trailing: Icon(Icons.link),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


