import 'package:activity2/Login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

   void signup()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();

    if(emailController.text.isNotEmpty&&passwordController.text.isNotEmpty){
      await prefs.setString("email", emailController.text);
      await prefs.setString("password", passwordController.text);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("SignUp Successfull")));

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login(

      )));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Fill all fields")));
    }
   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),

            ),
          ),SizedBox(height: 15,),
          TextField(
            controller: passwordController,
            decoration: const  InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: signup, child: const Text("Signup"))
        ],
      ),
      ),
    );
  }
}