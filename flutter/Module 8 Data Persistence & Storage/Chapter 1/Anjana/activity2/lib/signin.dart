import 'package:activity2/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
   TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup"),),
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
          ElevatedButton(onPressed: signup, child:Text("Signup")),
          
        ],),
      ),
    );
  }
  void signup() async{
 SharedPreferences preferences=await SharedPreferences.getInstance();
 if (emailcontroller.text.isNotEmpty && passwordcontroller.text.isNotEmpty) {
  await preferences.setString("email",emailcontroller.text);
   await preferences.setString("password",passwordcontroller.text );
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Signup susscesfully")));
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Loginpage()));
      
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("fill all fields")));

    }
 }
 
  }
  