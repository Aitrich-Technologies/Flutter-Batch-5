import 'package:activitycalcu/buttons.dart';
import 'package:flutter/material.dart';

class Calculatorscreen extends StatefulWidget {
  const Calculatorscreen({super.key});

  @override
  State<Calculatorscreen> createState() => _CalculatorscreenState();
}

class _CalculatorscreenState extends State<Calculatorscreen> {
  String num1 = "";     // 👉 first number store cheyyan
  String num2 = "";     // 👉 second number store cheyyan
  String operand = "";  // 👉 +, -, x, / etc. store cheyyan

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size; // screen size edukkan

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
                    // 👇 Display logic
                    (num1.isEmpty && operand.isEmpty && num2.isEmpty)
                        ? "0" // nothing entered yet
                        : (operand.isEmpty) 
                            ? num1 // only first number
                            : (num2.isEmpty)
                                ? "" // operator pressed but second number not typed → show nothing
                                : num2, // second number typing
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
                    child: buildbutton(value),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

 // ✅ Each button design (oru buttoninte design create cheyyan)
Widget buildbutton(value) {
  bool isZero = value == Btn.n0; // value "0" aano enn check cheyyunnu (0 button bigger aakum)

  return Padding(
    padding: const EdgeInsets.all(4.0), // buttoninte chuttum konch spacing
    child: Material(
      color: getBtncolor(value), // background color set cheyyan function vilikkunnu
      clipBehavior: Clip.hardEdge, // edges sharp allathe neatly cut cheyyan
      shape: isZero
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)) // 0 button oval shape
          : const CircleBorder(), // mattulla buttons circle shape
      elevation: 4, // small shadow tharam (button lift aayitt kanikkan)
      shadowColor: Colors.black54, // shadow color light black
      child: InkWell(          //oru navigation kodukan 
        onTap: () => onbtntap(value), // button click cheyyumbol onbtntap function work aavum
        child: Container(
          alignment: Alignment.center, // text centeril vechitt display cheyyan
          child: Center(
            child: Text(
              value, // buttonil kanikkenda text (1,2,3,+,AC etc.)
              style: TextStyle(
                fontSize: 28, // textinte size
                // If the button is AC, ±, or %, make the text black — otherwise white
                // AC, +/-, % buttons black text aanu, mattullath white
                color: [Btn.del, Btn.bar, Btn.per].contains(value)
                    ? Colors.black
                    : Colors.white,
                fontWeight: FontWeight.bold, // text bold aakkunnu
              ),
            ),
          ),
        ),
      ),
    ),
  );
}


  // ✅ When button is tapped
  void onbtntap(String value) {
    if (value == Btn.del) {
      clearAll(); // AC button
    } else if (value == Btn.bar) {
      toggleSign(); // +/-
    } else if (value == Btn.per) {
      convertPercentage(); // %
    } else if (value == Btn.equal) {
      calculateResult(); // =
    } else if (isOperator(value)) {
      setOperand(value); // +, -, x, /
    } else {
      appendNumber(value); // number or dot
    }
  }

  // ✅ Function: check operator ano
  // ✅ Check cheyyanulla function — is it an operator (+, -, ×, ÷)?
bool isOperator(String value) {
  // value plus, minus, multiply, divide il aanu enn nokkunnu
  return [Btn.add, Btn.sub, Btn.multiply, Btn.div].contains(value);
}

// ✅ Function: clear all values (AC button work cheyyan)
void clearAll() {
  setState(() { // UI refresh cheyyan
    num1 = "";     // first number reset cheyyunnu
    num2 = "";     // second number reset cheyyunnu
    operand = "";  // operator (+, -, ×, ÷) clear cheyyunnu
  });
}

// ✅ Function: toggle +/- (sign change cheyyan)
void toggleSign() {
  setState(() { // state change cheyyumbol UI update aakum

    // operand illenkil → first numberinte sign maattan
    if (operand.isEmpty) {
      if (num1.startsWith('-')) { // already negative aano enn nokkunnu
        num1 = num1.substring(1); // negative aanel minus remove cheyyum
      } else if (num1.isNotEmpty) { // number empty allenkil
        num1 = '-$num1'; // minus add cheyyum
      }
    } 

    // operand undenkil → second numberinte sign maattan
    else {
      if (num2.startsWith('-')) { // already negative aano
        num2 = num2.substring(1); // minus remove cheyyum
      } else if (num2.isNotEmpty) { // number undenkil
        num2 = '-$num2'; // minus add cheyyum
      }
    }
  });
}


  // ✅ Function: set operand (+ - x /)
  void setOperand(String value) {
  setState(() { // 🔹 UI refresh cheyyan setState use cheyyunnu

    // first number empty aanenkil operator set cheyyaruthu
    if (num1.isEmpty) return;  
    // 🔸 If user hasn’t typed first number yet, operator add cheyyaruthu
    // Example: press "+" without typing a number → ignore cheyyum

    // already operator undenkil → update cheyyaruthu
    if (operand.isNotEmpty && num2.isEmpty) {  
      operand = value;  
      return;
    }
    // 🔸 Operator already choose cheythittund & second number il ninnum start cheythittilla
    // So operator change cheyyan allow cheyyunnu
    // Example: "5 +" → press "-" → operand will change from "+" to "-"

    // second number undenkil → first calculate cheyth shesham new operand
    if (num2.isNotEmpty) {  
      calculateResult();  
    }
    // 🔸 If user already entered num2 also → first calculate old result,
    // and then new operator store cheyyum (for chain calculation)
    // Example: "5 + 3 +" → appo first 5+3 calculate cheyyum → result 8 → new operator set cheyyum

    operand = value;  
    // 🔸 Finally current operand store cheyyum (eg: +, -, ×, ÷)
  });
}


  // ✅ Function: append numbers and dot
  void appendNumber(String value) {
    setState(() {
      if (operand.isEmpty) {
        // first number type cheyyunnu
        if (value == Btn.dot && num1.contains('.')) return;
        num1 += value;
      } else {
        // second number type cheyyunnu
        if (value == Btn.dot && num2.contains('.')) return;
        num2 += value;
      }
    });
  }

  // ✅ Function: percentage
  
void convertPercentage() {
  
  setState(() {
    if (operand.isEmpty && num1.isNotEmpty) {    // 🧩 Condition 1: If no operator is selected and num1 is entered
      double val = double.parse(num1) / 100;       // 📍 Convert num1 (string) to double → divide by 100 → back to string
      num1 = val.toString();
    }                                          
    else if (num2.isNotEmpty){
      double val = double.parse(num2) / 100; // 📍 Convert num2 (string) to double → divide by 100 → back to string
      num2 = val.toString();
    }
  }); 
} 

  // ✅ Function: calculation logic
  void calculateResult() {
  // 🔹 Check cheyyuka – num1, operand, num2 okke fill cheythitundano
  // If any one is empty → calculation cheyyaruthu
  if (num1.isEmpty || operand.isEmpty || num2.isEmpty) return;

  // 🔹 String → double aakkanam (because mathematical operation venam)
  double n1 = double.parse(num1);
  double n2 = double.parse(num2);

  // 🔹 Result store cheyyan oru variable
  double result = 0;

  // 🔹 switch case use cheyyunnu – operator depend aayi operation select cheyyan
  switch (operand) {

    case Btn.add:        // If operator "+" aanel addition cheyyuka
      result = n1 + n2;
      break;
    case Btn.sub:        // If operator "-" aanel subtraction cheyyuka
      result = n1 - n2;
      break;
    case Btn.multiply:   // If operator "×" aanel multiplication cheyyuka
      result = n1 * n2;
      break;
    case Btn.div:        // Division cheyyumbo second number zero aano enn nokkuka
      if (n2 == 0) {     // Zero aanel “Error” kanikkuka, values reset cheyyuka
        num1 = "";
        operand = "";
        num2 = "";
        setState(() {});   // UI update cheyyan
        return;            // Function stop cheyyuka
      }                    // Allenkil normal division cheyyuka
      result = n1 / n2;
      break;
      default:            // Operator onnum match cheyyathenkil stop cheyyuka
      return;
  }
    // 🔹 Calculation kazhinju – ippo UI update cheyyanam
  setState(() {
    // Result double ninn string aakkan
    num1 = result.toString();

    // Resultinte avasanathil ".0" undenkil remove cheyyuka (5.0 → 5)
    if (num1.endsWith(".0")) {
      num1 = num1.substring(0, num1.length - 2);
    }

    // Second numberum operatorum reset cheyyuka – next operation ready aakum
    num2 = "";
    operand = "";
  });
}

  // ✅ Function: button background color
  Color getBtncolor(value) {
    // grey buttons
    if ([Btn.del, Btn.bar, Btn.per].contains(value)) {
      return const Color.fromARGB(255, 137, 138, 139);
    }
    // orange buttons
    else if ([Btn.multiply, Btn.div, Btn.sub, Btn.add, Btn.equal]
        .contains(value)) {
      return Colors.orange;
    }
    // normal buttons
    else {
      return const Color.fromARGB(221, 57, 56, 56);
    }
  }
}
