import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.white,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [Container(height: 300,width: 300,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/signup.jpg",),
            fit:BoxFit.cover)),),
            
            Text("Create your Account",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),),
            SizedBox(height: 10,),
            Text(" Create an account so you can manange your personal finances",style: TextStyle(color: const Color.fromARGB(255, 36, 34, 35),)),
            SizedBox(height: 10,),
        
            
            TextField(decoration: InputDecoration(labelText:"enter your name",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(labelText: "enter number",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(labelText: "enter password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
              SizedBox(height: 20,),
        
        
              ElevatedButton(onPressed: (){}, child: Text("signup",style: TextStyle(color: const Color.fromARGB(255, 253, 253, 253)),),
              style:ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 9, 79, 230),
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 150)) ,),
              SizedBox(height: 20,),
              Text("signup with"),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.facebook,size: 30,),
                SizedBox(width: 20,),
                Icon(Icons.g_mobiledata,size: 30,),
                SizedBox(width: 20,),
                Icon(Icons.apple,size: 30,),
                ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),TextButton(onPressed: (){}, child: Text("Login",
                  style: TextStyle(color: const Color.fromARGB(255, 10, 94, 240)),)),
                ],
              )
            ],
          ),
        ],
        
        
        ),
        ),
      ),
      
      
      );
    
  }
}