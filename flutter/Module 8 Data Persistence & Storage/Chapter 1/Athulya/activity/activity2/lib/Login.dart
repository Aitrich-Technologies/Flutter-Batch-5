import 'package:activity2/Home.dart';
import 'package:activity2/Signup.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  void login()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String? savedEmail=prefs.getString("email");
    String? savedPassword=prefs.getString("password");

    if(emailController.text==savedEmail&&
    passwordController.text==savedPassword
    ){
      await prefs.setBool("loggedIn", true);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Successful !")));

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Homepage()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong Email or Password")));
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
           children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: login, child:Text("Login")
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const Signup()));
            }, child: Text("Create new account"))
           ],
      ),
      
      ),
    );
  }
}