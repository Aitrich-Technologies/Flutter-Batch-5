import 'package:flutter/material.dart';

void main (){runApp(MaterialApp(debugShowCheckedModeBanner: false,home: A(),));}

class Btn {
static String del ="AC";
static String plusminus = "+/_";  
static String Percentage ="%";
static String divide ="/";
static String Add ="+";
static String multiply ="x";
static String substact ="-";
static String equals ="=";
static String dot = ".";

static String n0 ="0";
static String n1 ="1";
static String n2 ="2";
static String n3 ="3";
static String n4 ="4";
static String n5 ="5";
static String n6 ="6";
static String n7 ="7";
static String n8 ="8";
static String n9 ="9";

static List<String> Buttonvalues = [
  del ,  plusminus , Percentage , divide ,
  n9  ,   n8 ,  n7  , Add ,
  n6 , n5  , n4 , multiply ,
  n3 , n2 , n1 , substact ,
  n0      , dot , equals ,
];
}

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.black,
      body:SingleChildScrollView(
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Expanded(child: Column(
            children: [
              Container(alignment: Alignment.topRight,child: Text("0",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              Wrap(
                children: Btn.Buttonvalues.map((value)=>SizedBox(
                    width: screensize.width/4,
                    height: screensize.height/5,
                    child: buildbutton(value),
                  )).toList()
                  
                
              )
            ],
          )
          ),
        ),
        ),
      ),

      
    );
  }
}

void buildbutton(String value) {
  return 
}