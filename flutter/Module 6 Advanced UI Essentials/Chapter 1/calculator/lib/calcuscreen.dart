

import 'package:activitycalcu/buttons.dart';
import 'package:flutter/material.dart';

class Calculatorscreen extends StatefulWidget {
  const Calculatorscreen({super.key});

  @override
  State<Calculatorscreen> createState() => _CalculatorscreenState();
}

class _CalculatorscreenState extends State<Calculatorscreen> {
  String num1 = "";
  String num2 = "";
  String operand = "";
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              reverse: true,
              child: Container(
                child: SafeArea(
                  child: Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "$num1$operand$num2".isEmpty ? "0" : "$num1$operand$num2",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //button
          Wrap(
            children: Btn.buttonvalues
                .map(
                  (value) => SizedBox(
                    width: value == Btn.n0
                        ? screensize.width / 2
                        : (screensize.width / 4),
                    height: screensize.width / 5,
                    child: buildbutton(value),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget buildbutton(value) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: getBtncolor(value),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.white24),
        ),
        child: InkWell(
          onTap: () => onbtntap(value),
          child: Center(
            child: Text(
              value,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  void onbtntap(String value) {
    if (value==Btn.del) {
      delete();
      return;
    }
    if (value==Btn.clr) {
      clearAll();
      return;     
    }
    if (value==Btn.per) {
      convertopercentage();
      return;
    }
    if (value==Btn.equal) {
      equal();
      return;
    }
    appendValue(value);
  }
  void equal(){
    if(num1.isEmpty)return;
    if(operand.isEmpty)return;
    if(num2.isEmpty)return;

   final double number1 = double.parse(num1);
   final double number2 = double.parse(num2);
   var result = 0.0;
   switch (operand) {
     case Btn.add:
     result=number1 + number2 ;
     case Btn.sub:
     result=number1 - number2 ;
     case Btn.multiply:
     result=number1 * number2 ;
     case Btn.div:
     result=number1 / number2 ;
       break;
     default:
   }
   setState(() {
     num1 = "$result";
     if(num1.endsWith(".0")){
      num1 = num1.substring(0,num1.length - 2);
     }

     operand="";
     num2="";
   });
  }
  void convertopercentage(){
    if(num1.isNotEmpty&&operand.isNotEmpty&&num2.isNotEmpty&&operand.isNotEmpty){
      equal();
    }
    if (operand.isNotEmpty) {
      return;
    }
    final number = double.parse(num1);
    setState(() {
      num1="${(number / 100)}";
    operand="";
    num2="";
      
    });
  }
 void clearAll(){
  setState(() {
    num1="";
    operand="";
    num2="";
  });
 }

  void delete(){
    if (num2.isNotEmpty) {
      num2=num2.substring(0,num2.length - 1);
      
    }else if(operand.isNotEmpty){
      operand = "";
    }else if (num1.isNotEmpty){
      num1=num1.substring(0,num1.length - 1);
    }
    setState(() {
      
    });
  }
  void appendValue (String value){
    if (value!=Btn.dot&&int.tryParse(value)==null) {
      if (operand.isNotEmpty&&num2.isNotEmpty) {
        equal();
      }
      operand = value;

      
    }else if(num1.isEmpty||operand.isEmpty){
      if (value==Btn.dot && num1.contains(Btn.dot)) return;
      if (value==Btn.dot && (num1.isEmpty || num1==Btn.n0)) {
        value = "0.";
      }
      num1 += value;
      
    }else if(num2.isEmpty||operand.isEmpty){
      if (value==Btn.dot && num2.contains(Btn.dot)) return;
      if (value==Btn.dot && (num2.isEmpty || num2==Btn.n0)) {
        value = "0.";
      }
      num2 += value;
      
    }
    
    setState(() {

    });
  }

  Color getBtncolor(value) {
    return [Btn.del, Btn.clr].contains(value)
        ? Colors.blueGrey
        : [
            Btn.per,
            Btn.multiply,
            Btn.div,
            Btn.sub,
            Btn.add,
            Btn.dot,
            Btn.equal,
          ].contains(value)
        ? Colors.orange
        : Colors.black87;
  }
}
