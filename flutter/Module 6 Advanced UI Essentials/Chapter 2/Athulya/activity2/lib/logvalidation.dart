import 'package:flutter/material.dart';

class Logvalidation extends StatefulWidget {
  const Logvalidation({super.key});

  @override
  State<Logvalidation> createState() => _LogvalidationState();
}

class _LogvalidationState extends State<Logvalidation> {
  final TextEditingController usernameController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  String?usernameError;
  String?passwordError;

  String? validateUsername(String UserName){
    if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(UserName)) {
    return "username must not contain special characters or numbers";
  }
  if(UserName.isEmpty){
    return "Username cannot be empty";
  }
  return null;
  }
  
  String?validatePassword(String pasword){
    if(pasword.length<6){
    return "Password must be at least 6 characters long";
    }
    if(!RegExp(r'[A-Z]').hasMatch(pasword)){
      return 'Password must contain at least one uppercase letter';
    }
    if(!RegExp(r'[0-9]').hasMatch(pasword)){
      return 'Password must contain at least one number';
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Login Page"),centerTitle: true,
      backgroundColor: Colors.red,
     ),
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: TextField(
            controller: usernameController,
            decoration: InputDecoration(
              labelText: "UserName",
              errorText: usernameError,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onChanged: (value){
              setState(() {
                usernameError=validateUsername(value);
              });
            },
          ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              errorText: passwordError,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            onChanged: (value){
              setState(() {
                passwordError=validatePassword(value);
              });
            },
          ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            setState(() {
              usernameError=validateUsername(usernameController.text);
              passwordError=validatePassword(passwordController.text);
            });
            if(usernameError==null&&passwordError==null){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Login successful!")));
            }
          }, child: Text("Login"))
        ],
      ),
     ),
    );
  }
}