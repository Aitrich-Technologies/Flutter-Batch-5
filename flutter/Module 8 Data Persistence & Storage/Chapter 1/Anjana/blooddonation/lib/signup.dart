
import 'package:blooddonation/Login.dart';
import 'package:blooddonation/splash1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: Signup(),));
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   bool obsecure = true;
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  String? nameerror;
  String? passworderror;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 191, 30, 18),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 260.0),
          child: Column(
            children: [
              Text(
                "Signup",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: name,
        
                  decoration: InputDecoration(
                    errorText: nameerror,
                    errorStyle: TextStyle(color: Colors.white),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onChanged: (value){
                    setState(() {
                      nameerror=namevalidation(value);
                    });
                  },
                ),
              ),
        
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: password,
                  
                  obscureText: obsecure,
                  decoration: InputDecoration(errorText: passworderror,
                  errorStyle: TextStyle(color: Colors.white),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obsecure = !obsecure;
                        });
                      },
                      icon: Icon(
                        obsecure ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
        
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onChanged: (value){
                    setState(() {
                      passworderror = passwordvalidation(value);
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: signup,
                child: Text(
                  "Signup",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 168, 4, 4),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(150, 50),
                ),
              ),SizedBox(height: 5,),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Color.fromARGB(221, 255, 255, 255),
                        
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
  
  String? namevalidation(String name) {
     if(name.isEmpty){
  return "username is required";
  }
    return null;
  }
  
  String? passwordvalidation(String password) {
     if (password.isEmpty) {
    return "password is required";
    
  }
  else if (!RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
        .hasMatch(password)) {
      return "Weak password (need upper, lower, number, symbol, characters)";
    }
  return null;
  }

  void signup()async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (name.text.isNotEmpty&& password.text.isNotEmpty){
      await preferences.setString("name", name.text);
      await preferences.setString("password", password.text);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:  const Color.fromARGB(255, 191, 30, 18),content: Text("Signup susscesfully",style: TextStyle(color: Colors.white))));
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Splashscreen1()));
      
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:  const Color.fromARGB(255, 255, 255, 255),content: Text("fill all fields",style: TextStyle(color: const Color.fromARGB(255, 159, 4, 4)))));

    }
  }
}
