import 'package:activity2/home.dart';
import 'package:activity2/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: Loginpage(),));
}

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page"),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(
              labelText: "email",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
            ),
          ),SizedBox(height: 5),
          TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(
              labelText: "password",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: login, child:Text("login")),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
          }, child: Text("create new account"))
        ],),
      ),
    );
  }

  void login()async {
    SharedPreferences preferences= await SharedPreferences.getInstance();
    String? savedemail = preferences.getString("email");
    String? Savedpassword = preferences.getString("password");

    if (emailcontroller.text == savedemail && passwordcontroller.text ==Savedpassword) {
      await preferences.setBool("loggedin", true);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Loginsussfully")));
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Homepage()));
      
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("wrong email or Password")));

    }
  }
}


