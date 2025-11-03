import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  String? nameerror;
  String? emailerror;
  String? passworderror;
  bool sceenpassword = true;
  bool showpassword = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(171, 121, 85, 72),
      ),
      body: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Signup on Bear",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQwlR-wPhomGLJxbigNcSgMWIItp9d-SXt3w&s",
            ),
            Text(
              "Happy Bear",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 10),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: name,
                decoration: InputDecoration(
                  labelText: " Name",
                  fillColor: const Color.fromARGB(176, 239, 100, 85),
                  filled: true,errorText: nameerror,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),onChanged: (value) {
                  setState(() {
                    nameerror = validationname(value);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: " Email",errorText: emailerror,
                  prefixIcon: Icon(Icons.email),
                  fillColor: const Color.fromARGB(177, 104, 173, 230),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),onChanged: (value) {
                  setState(() {
                    emailerror = validationemail(value);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                obscureText: !showpassword,
                decoration: InputDecoration(
                  labelText: "Password",errorText: passworderror,
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      sceenpassword = !sceenpassword;
                      showpassword = !showpassword;
                    });
                  }, 
                  icon: Icon(sceenpassword?
                    Icons.visibility
                    :Icons.visibility_off_rounded),),
                    
                  fillColor: const Color.fromARGB(158, 112, 225, 142),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),onChanged: (value) {
                  setState(() {
                  
                    passworderror = validationpassword(value);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    nameerror = validationname(name.text); 
                    passworderror = validationemail(email.text);
                    emailerror = validationpassword(password.text);
                    if (nameerror == null && emailerror == null && passworderror == null ) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("login succesfull")));
                      
                    } else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please fill all feilds")));
                    }  });
                },
                child: Text(
                  "Login With Email",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(500, 50),
                  backgroundColor: const Color.fromARGB(158, 121, 85, 72),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(width: 2),
                Text(
                  "Click here",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 1),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: Row(
                  children: [
                    Icon(Icons.facebook, size: 25, color: Colors.red),
                    SizedBox(width: 5),
                    Icon(Icons.settings, size: 25, color: Colors.blue),
                    SizedBox(width: 5),
                    Icon(Icons.email, size: 25, color: Colors.green),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String? validationpassword(String password) {
  if(password.isEmpty){
    return "password is required";
  }
  else if (password.length<8) {
    return "password must contain 8 characters"; 
  }
  else if(!RegExp(r'[A-Z]').hasMatch(password)) {
    return "password must contain at least a-z uppercase";
  }
  else if (!RegExp(r'[a-z]').hasMatch(password)) {
    return "password must contain at least a-z lowercase";
  }
  else if (!RegExp(r'[0-9]').hasMatch(password)) {
    return "password must contain at least one number";
  }
  else if(!RegExp(r'[@#$%&*>]').hasMatch(password)) {
    return "password must contain at least one special charater";
  }
  else if (password.length<8) {
    return "password must contain 8 characters"; 
  }
   else if(!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$').hasMatch(password)){
    return "suggest a Strong password";
  }
  return null;
}

String? validationemail(String email) {
  if (email.isEmpty) {
  return "email is required"; 
  }
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
    return "email id should be specific & must contain @ character";
  }   
  
  return null;

}

String? validationname(String name) {
  if (name.isEmpty) {
  return "name is required";    
  }
  return null;
}
