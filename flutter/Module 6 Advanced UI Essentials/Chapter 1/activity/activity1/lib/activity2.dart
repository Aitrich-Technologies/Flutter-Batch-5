import 'package:activity1/activity2pg2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Page2()));
}

class Act2 extends StatefulWidget {
  const Act2({super.key});

  @override
  State<Act2> createState() => _Act2State();
}

class _Act2State extends State<Act2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Bear",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800,color: Colors.brown),
              ),
              SizedBox(height: 10),
              Image.network(
                "https://www.shutterstock.com/image-vector/cute-bear-illustration-perfect-childrens-600nw-2472783349.jpg",
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.email, size: 30, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            "LOGIN WITH EMAIL",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    minimumSize: Size(50, 60),
                  ),
                ),
              ),SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.facebook_sharp, size: 35, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            "LOGIN WITH FACEBOOK",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 23, 61, 132),
                    minimumSize: Size(50, 60),
                  ),
                ),
              ),SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 48.0),
                child: Row(
                  children: [
                    Text("Didn't have an account ?",style: TextStyle(fontSize: 20),),SizedBox(width: 2,),TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black))
                    )
                  ],
                ),
              ),SizedBox(height: 70,),
              Column(
                children: [
                  Text("By Continue you agree to our",style: TextStyle(fontSize: 20)),
                  TextButton(onPressed: (){}, child:Text( "Terms & Privacy Policy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
