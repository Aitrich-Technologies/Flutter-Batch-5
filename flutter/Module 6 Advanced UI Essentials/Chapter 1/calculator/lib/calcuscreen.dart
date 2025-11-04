



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
    final screensize = MediaQuery.of(context).size; //is fn for geting scrn wdth and higt
    return Scaffold(
      body: Column(
        children: [
          // ✅ Display Area
          Expanded(
            child: SingleChildScrollView(
              reverse: true,
              child: SafeArea(
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    (num1.isEmpty && operand.isEmpty && num2.isEmpty)
                        ? "0"                 //Nothing typed yet → show 0
                        : operand.isEmpty      //Only first number typed (no operator yet)
                            ? num1
                            : num2.isEmpty      // Operator pressed but second number not yet typed
                                ? num1
                                : num2,          //Second number typing or already typed
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
          ),

          // ✅ Button Grid
          Wrap(
            children: Btn.buttonvalues
                .map(
                  (value) => SizedBox(
                    width: value == Btn.n0
                        ? screensize.width / 2
                        : (screensize.width / 4),
                    height: screensize.width / 5,
                    child: buildbutton(value),           //function to build each button design.
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  // ✅ Button Builder
  Widget buildbutton(value) {
    bool isZero = value == Btn.n0;      //is button 0 ano ennu nokunu
    final screensize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: getBtncolor(value),
        clipBehavior: Clip.hardEdge,
        shape: isZero
            ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
            : const CircleBorder(),
        elevation: 4,
        shadowColor: Colors.black54,
        child: InkWell(
          onTap: () => onbtntap(value),
          child: Container(
            alignment: Alignment.center,
            padding: isZero
                ? EdgeInsets.only(right: screensize.width * 0.25)
                : EdgeInsets.zero,
            child: Center(
              child: Text(
                value,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ✅ Main Tap Function
  void onbtntap(String value) {
    if (value == Btn.del) {
      clearAll();
      return;
    }
    if (value == Btn.per) {
      convertopercentage();
      return;
    }
    if (value == Btn.equal) {
      equal();
      return;
    }

    // 🆕 Sign toggle logic
    if (value == Btn.bar) {
      toggleSign();
      return;
    }

    appendValue(value);
  }

  // 🆕 Sign toggle logic
  void toggleSign() {
    setState(() {
      if (operand.isEmpty) {
        if (num1.startsWith('-')) {
          num1 = num1.substring(1);
        } else if (num1.isNotEmpty) {
          num1 = '-$num1';
        }
      } else {
        if (num2.startsWith('-')) {
          num2 = num2.substring(1);
        } else if (num2.isNotEmpty) {
          num2 = '-$num2';
        }
      }
    });
  }

  // ✅ Perform Calculation
  void equal() {
    if (num1.isEmpty) return;
    if (operand.isEmpty) return;
    if (num2.isEmpty) return;

    final double number1 = double.parse(num1);
    final double number2 = double.parse(num2);
    double result = 0.0;

    switch (operand) {
      case Btn.add:
        result = number1 + number2;
        break;
      case Btn.sub:
        result = number1 - number2;
        break;
      case Btn.multiply:
        result = number1 * number2;
        break;
      case Btn.div:
        result = number1 / number2;
        break;
      default:
        return;
    }

    setState(() {
      num1 = "$result";
      if (num1.endsWith(".0")) {
        num1 = num1.substring(0, num1.length - 2);
      }
      operand = "";
      num2 = "";
    });
  }

  // ✅ Percentage Conversion
  void convertopercentage() {
    if (num1.isNotEmpty && operand.isNotEmpty && num2.isNotEmpty) {
      equal();
    }
    if (operand.isNotEmpty) return;

    final number = double.parse(num1);
    setState(() {
      num1 = "${(number / 100)}";
      operand = "";
      num2 = "";
    });
  }

  // ✅ Clear All
  void clearAll() {
    setState(() {
      num1 = "";
      operand = "";
      num2 = "";
    });
  }
  
  // ✅ Handle Input Appending
  void appendValue(String value) {
    if (value != Btn.dot && int.tryParse(value) == null) {
      if (operand.isNotEmpty && num2.isNotEmpty) {
        equal();
      }
      operand = value;
    } else if (operand.isEmpty) { 
      if (num1 == "0" && value != Btn.dot) {
        num1 = value;
      }else{
      if (value == Btn.dot && num1.contains(Btn.dot)) return;
      if (value == Btn.dot && (num1.isEmpty || num1 == Btn.n0)) {
        value = ".";
      }
      num1 += value;
    } }else {
      if (value == Btn.dot && num2.contains(Btn.dot)) return;
      if (value == Btn.dot && (num2.isEmpty || num2 == Btn.n0)) {
        value = ".";
      }
      num2 += value;
    }
    setState(() {});
  }

  // ✅ Button Color Logic
  Color getBtncolor(value) {
    return [Btn.del, Btn.bar, Btn.per].contains(value)
        ? const Color.fromARGB(255, 137, 138, 139)
        : [
            Btn.multiply,
            Btn.div,
            Btn.sub,
            Btn.add,
            Btn.equal,
          ].contains(value)
            ? Colors.orange
            : const Color.fromARGB(221, 57, 56, 56);
  }
}
