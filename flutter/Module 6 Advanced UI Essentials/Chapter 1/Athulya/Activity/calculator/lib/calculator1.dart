import 'package:calculator/values.dart';
import 'package:flutter/material.dart';

class Calculator1 extends StatefulWidget {
  const Calculator1({super.key});

  @override
  State<Calculator1> createState() => _Calculator1State();
}

class _Calculator1State extends State<Calculator1> {
  String number1 = ""; // first number
  String operand = ""; // + - × ÷
  String number2 = ""; // second number
  bool showResult = false; // shows result only after '='

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    String displayText = "0";

    // -------- DISPLAY LOGIC --------
    if (showResult) {
      displayText = number1; // show result only
    } else if (operand.isEmpty) {
      displayText = number1.isEmpty ? "0" : number1;
    } else if (operand.isNotEmpty && number2.isEmpty) {
      displayText = number1;
    } else {
      displayText = number2;
    }

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // OUTPUT DISPLAY
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    displayText,
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),

            // BUTTONS
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: Values.buttonValues.map((value) {
                final double buttonSize = screenSize.width / 4.5;
                return SizedBox(
                  width: value == Values.n0 ? buttonSize * 2 + 8 : buttonSize,
                  height: buttonSize,
                  child: buildButton(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  // ---------------------------
  // BUILD BUTTONS
  Widget buildButton(value) {
    final bool isZero = value == Values.n0;
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Material(
        color: getBtnColor(value),
        shape: isZero ? const StadiumBorder() : const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () => onBtnTap(value),
          customBorder: isZero ? const StadiumBorder() : const CircleBorder(),
          child: isZero
              ? Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Center(
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  // ---------------------------
  // BUTTON ACTION HANDLER
  void onBtnTap(String value) {
    if (value == Values.allclear) {
      clearAll(); // AC clears everything
      return;
    }

    if (value == Values.percentage) {
      convertToPercentage();
      return;
    }

    if (value == Values.plusMinus) {
      toggleSign();
      return;
    }

    if (value == Values.calculate) {
      calculate();
      showResult = true;
      setState(() {});
      return;
    }

    appendValue(value);
    showResult = false;
    setState(() {});
  }

  // ---------------------------
  // APPEND VALUES (numbers & operands)
  void appendValue(String value) {
    if (value != Values.dot && int.tryParse(value) == null) {
      if (number1.isEmpty) return;
      operand = value;
    } else if (operand.isEmpty) {
      if (number1 == "0" && value != Values.dot) {
        number1 = value;
      } else {
        if (value == Values.dot && number1.contains(Values.dot)) return;
        if (value == Values.dot && (number1.isEmpty || number1 == Values.n0)) {
          value = ".";
        }
        number1 += value;
      }
    } else {
      if (value == Values.dot && number2.contains(Values.dot)) return;
      if (value == Values.dot && (number2.isEmpty || number2 == Values.n0)) {
        value = ".";
      }
      number2 += value;
    }
  }

  // ---------------------------
  // CALCULATE RESULT
  void calculate() {
    if (number1.isEmpty || operand.isEmpty || number2.isEmpty) return;

    final double num1 = double.parse(number1);
    final double num2 = double.parse(number2);

    var result = 0.0;
    switch (operand) {
      case Values.add:
        result = num1 + num2;
        break;
      case Values.substract:
        result = num1 - num2;
        break;
      case Values.multiply:
        result = num1 * num2;
        break;
      case Values.divide:
        result = num1 / num2;
        break;
    }

    setState(() {
      number1 = result.toStringAsPrecision(10);
      if (number1.endsWith(".0")) {
        number1 = number1.substring(0, number1.length - 2);
      }
      operand = "";
      number2 = "";
    });
  }

  // ---------------------------
  // TOGGLE SIGN (+/-)
  void toggleSign() {
    setState(() {
      if (operand.isEmpty) {
        // Toggle number1
        if (number1.isEmpty) {
          number1 = "-0";
        } else if (number1.startsWith('-')) {
          number1 = number1.substring(1);
        } else {
          number1 = '-$number1';
        }
      } else {
        // Toggle number2
        if (number2.isEmpty) {
          number2 = "-0";
        } else if (number2.startsWith('-')) {
          number2 = number2.substring(1);
        } else {
          number2 = '-$number2';
        }
      }
    });
  }

  // ---------------------------
  void convertToPercentage() {
    if (number1.isNotEmpty && operand.isNotEmpty && number2.isNotEmpty) {
      calculate();
    }

    if (operand.isNotEmpty) return;
    if (number1.isEmpty) return;

    final number = double.parse(number1);
    setState(() {
      number1 = (number / 100).toString();
      operand = "";
      number2 = "";
    });
  }

  // ---------------------------
  // AC BUTTON -> clear all
  void clearAll() {
    setState(() {
      number1 = "";
      operand = "";
      number2 = "";
      showResult = false;
    });
  }

  // ---------------------------
  // DEL BUTTON -> delete one digit
  void delete() {
    setState(() {
      if (showResult) {
        clearAll();
        return;
      }

      if (operand.isEmpty) {
        if (number1.isNotEmpty) {
          number1 = number1.substring(0, number1.length - 1);
        }
      } else if (number2.isNotEmpty) {
        number2 = number2.substring(0, number2.length - 1);
      }
    });
  }

  // ---------------------------
  // BUTTON COLOR LOGIC
  Color getBtnColor(value) {
    return [
          Values.allclear,
          Values.plusMinus,
          Values.percentage,
        ].contains(value)
        ? const Color.fromARGB(255, 140, 142, 143)
        : [
            Values.multiply,
            Values.add,
            Values.substract,
            Values.divide,
            Values.calculate,
          ].contains(value)
        ? Colors.orange
        : const Color.fromARGB(221, 61, 58, 58);
  }
}


// import 'package:flutter/material.dart';
// import 'package:calculator/values.dart';

// class Calculator1 extends StatefulWidget {
//   const Calculator1({super.key});

//   @override
//   State<Calculator1> createState() => _Calculator1State();
// }

// class _Calculator1State extends State<Calculator1> {
//   String num1 = "";
//   String num2 = "";
//   String op = "";
//   bool showResult = false;

//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     final display = _getDisplayText();

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         bottom: false,
//         child: Column(
//           children: [
//             // DISPLAY
//             Expanded(
//               child: Container(
//                 alignment: Alignment.bottomRight,
//                 padding: const EdgeInsets.all(24),
//                 child: Text(
//                   display,
//                   style: const TextStyle(
//                     fontSize: 48,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                   textAlign: TextAlign.end,
//                 ),
//               ),
//             ),

//             // BUTTONS
//             Wrap(
//               spacing: 8,
//               runSpacing: 8,
//               children: Values.buttonValues.map((value) {
//                 final isZero = value == Values.n0;
//                 final double size = screenSize.width / 4.5;
//                 return SizedBox(
//                   width: isZero ? size * 2 + 8 : size,
//                   height: size,
//                   child: _buildButton(value),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // -------------------------------------------------
//   // DISPLAY LOGIC
//   String _getDisplayText() {
//     if (showResult) return num1.isEmpty ? "0" : num1;
//     if (op.isEmpty) return num1.isEmpty ? "0" : num1;
//     if (num2.isEmpty) return num1;
//     return num2;
//   }

//   // -------------------------------------------------
//   // BUTTON BUILDER
//   Widget _buildButton(String value) {
//     final isZero = value == Values.n0;
//     return Material(
//       color: _btnColor(value),
//       shape: isZero ? const StadiumBorder() : const CircleBorder(),
//       clipBehavior: Clip.hardEdge,
//       child: InkWell(
//         onTap: () => _onTap(value),
//         child: Center(
//           child: Text(
//             value,
//             style: const TextStyle(
//               fontSize: 26,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // -------------------------------------------------
//   // BUTTON TAP LOGIC
//   void _onTap(String value) {
//     setState(() {
//       switch (value) {
//         case Values.allclear:
//           _clearAll();
//           break;
//         case Values.plusMinus:
//           _toggleSign();
//           break;
//         case Values.percentage:
//           _toPercentage();
//           break;
//         case Values.calculate:
//           _calculate();
//           showResult = true;
//           break;
//         default:
//           _append(value);
//           showResult = false;
//       }
//     });
//   }

//   // -------------------------------------------------
//   // APPEND VALUE
//   void _append(String value) {
//     if (int.tryParse(value) == null && value != Values.dot) {
//       if (num1.isEmpty) return;
//       op = value;
//     } else if (op.isEmpty) {
//       num1 = _addDigit(num1, value);
//     } else {
//       num2 = _addDigit(num2, value);
//     }
//   }

//   String _addDigit(String current, String value) {
//     if (value == Values.dot && current.contains(Values.dot)) return current;
//     if (value == Values.dot && current.isEmpty) return "0.";
//     if (current == "0" && value != Values.dot) return value;
//     return current + value;
//   }

//   // -------------------------------------------------
//   // CALCULATE RESULT
//   void _calculate() {
//     if (num1.isEmpty || op.isEmpty || num2.isEmpty) return;

//     final n1 = double.parse(num1);
//     final n2 = double.parse(num2);
//     double result = 0;

//     switch (op) {
//       case Values.add:
//         result = n1 + n2;
//         break;
//       case Values.substract:
//         result = n1 - n2;
//         break;
//       case Values.multiply:
//         result = n1 * n2;
//         break;
//       case Values.divide:
//         result = n1 / n2;
//         break;
//     }

//     num1 = result.toStringAsPrecision(10);
//     if (num1.endsWith('.0')) num1 = num1.substring(0, num1.length - 2);
//     num2 = "";
//     op = "";
//   }

//   // -------------------------------------------------
//   // SIGN TOGGLE
//   void _toggleSign() {
//     if (op.isEmpty) {
//       num1 = _toggle(num1);
//     } else {
//       num2 = _toggle(num2);
//     }
//   }

//   String _toggle(String val) {
//     if (val.isEmpty) return "-0";
//     return val.startsWith('-') ? val.substring(1) : "-$val";
//   }

//   // -------------------------------------------------
//   // PERCENTAGE
//   void _toPercentage() {
//     if (num1.isEmpty) return;
//     if (op.isNotEmpty && num2.isNotEmpty) _calculate();

//     final n = double.parse(num1);
//     num1 = (n / 100).toString();
//     op = "";
//     num2 = "";
//   }

//   // -------------------------------------------------
//   // CLEAR ALL
//   void _clearAll() {
//     num1 = "";
//     num2 = "";
//     op = "";
//     showResult = false;
//   }

//   // -------------------------------------------------
//   // BUTTON COLORS
//   Color _btnColor(String value) {
//     if ([Values.allclear, Values.plusMinus, Values.percentage].contains(value)) {
//       return const Color.fromARGB(255, 140, 142, 143);
//     }
//     if ([Values.add, Values.substract, Values.multiply, Values.divide, Values.calculate].contains(value)) {
//       return Colors.orange;
//     }
//     return const Color.fromARGB(221, 61, 58, 58);
//   }
// }
