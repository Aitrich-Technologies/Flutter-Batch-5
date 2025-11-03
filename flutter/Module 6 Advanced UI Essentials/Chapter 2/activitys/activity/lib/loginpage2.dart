import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  String ? usernameError;
  String?  passwordError;

String? validatepassword(String password) {
  if (password.length<6) {
    return "password must be atleast 6 characters";
    
  }
  if (!RegExp(r'[A-Z]').hasMatch(password)) {
    return "password must contain at least one upper case";
    
  }
  if (!RegExp(r'[0-9]').hasMatch(password)) {
    return "password must contain at least one number";
    
  }
  return null ;
}

String? validateusername(String username) {
  if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(username)) {
    return "username must not contain special characters or numbers";
    
  }
  if(username.isEmpty){
    return "username cannot be empty";
  }
  return null;
}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("loginpage"),),
    
    body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: TextField(controller: username,
    decoration: InputDecoration(
      labelText: "username",
      errorText: usernameError,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
      )
    ),onChanged: (value){
      setState(() {
        usernameError = validateusername(value);
      }
      );
    },
    ),
    ),SizedBox(height: 20,),
    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: TextField(controller: password,
    obscureText: true,
    decoration: InputDecoration(
      labelText: "Password",
      errorText: usernameError,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
      )
    ),onChanged: (value){
      setState(() {
        usernameError = validatepassword(value);
      }
      );
    },
    ),
    ),
    SizedBox(height: 20,),
    ElevatedButton(onPressed: (){
      setState(() {
        usernameError = validateusername(username.text);
        passwordError = validatepassword(password.text);
      });
      if (usernameError == null && passwordError == null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("login succesful")));
        
      }
    }, child: Text("login") )
    ],),),);
  }
}

