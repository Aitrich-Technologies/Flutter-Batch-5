import 'package:flutter/material.dart';

class Details_screen extends StatelessWidget {
  const Details_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        centerTitle: true,
        title: const Text("Pet Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
       Stack(
  alignment: Alignment.topRight,
  children: [
    SizedBox(
      width: 400,
      height: 200,
      child: Image.asset("images/girl.jpg", fit: BoxFit.cover),
    ),
    Positioned(
      top: 10,
      right: 10,
      child: Column(
        children: const [
          Icon(Icons.report, color: Color.fromARGB(255, 228, 43, 10)),
          SizedBox(height: 4), 
          Text('Report', style: TextStyle(color: Colors.red)),
        ],
      ),
    ),
  ],
),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Persian Cat",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Loki",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue[100],
                  child: const Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "3 Months",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Age")
                    ],
                  )),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue[100],
                  child: const Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "4.3 kg",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Weight")
                    ],
                  )),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue[100],
                  child: const Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Male",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Gender")
                    ],
                  )),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Vaccinated on 10/08/2022",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Card(
              color: Colors.green[200],
              elevation: 4,
              margin: const EdgeInsets.all(20),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ai-girl.jpg'),
                      radius: 40,
                    ),
                    Text(
                      "Mai",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: const Text(
                    'Chat',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: const Text(
                    'Call',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
