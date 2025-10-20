import 'package:flutter/material.dart';

class Buyerviewpages1 extends StatefulWidget {
  const Buyerviewpages1({Key? key}) : super(key: key);

  @override
  _Buyerviewpages1State createState() => _Buyerviewpages1State();
}

class _Buyerviewpages1State extends State<Buyerviewpages1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 143, 59),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  height: 250,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 15,
                  child: Icon(
                    Icons.report_gmailerrorred,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
                Positioned(
                  top: 32,
                  right: 10,
                  child: Text(
                    "Report",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Persian Cat",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Loki",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Kannur,kerala",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Text("3 Months ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),SizedBox(height: 3,),Text("Age",style: TextStyle(fontSize: 17,color: Colors.grey),)
                      ],
                    ),
                      height: 110,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 207, 206),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Text("Male ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),SizedBox(height: 3,),Text("Gender",style: TextStyle(fontSize: 17,color: Colors.grey),)
                      ],
                    ),
                    height: 110,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 207, 206),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Text("4.3 kg ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),SizedBox(height: 3,),Text("weight",style: TextStyle(fontSize: 17,color: Colors.grey),)
                      ],
                    ),
                    height: 110,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 207, 206),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Vaccinated on 10/08/2022",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
            // ),SizedBox(height: 2,),Expanded(child: GridView.builder(itemCount: 3,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisSpacing: 2,childAspectRatio: 0.1,crossAxisSpacing: 2), itemBuilder: (context,index){return Container(color: const Color.fromARGB(255, 255, 64, 77),);}))

            // Add containers here

            ,
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 226, 207, 206),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Mai",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Posted one day ago...",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Pet Story",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'This little sweetie is a 3 month old male cat. He has been at the shelter since he was born, and we would really love to see him get into a new home soon!',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 124, 187, 127)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat_outlined),
                        Text("CHAT"),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 13, 49, 13)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wifi_calling_3_rounded),
                        Text("CALL"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
