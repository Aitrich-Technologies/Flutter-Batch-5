// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


// class MyApp88 extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }

// class _State extends State<MyApp88> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   void dispose() {
//     nameController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }

//   void _submit() {
//     // Perform submission logic here
//     print("Username: ${nameController.text}");
//     print("Password: ${passwordController.text}");
//   }

//   void _clear() {
//     setState(() {
//       nameController.clear();
//       passwordController.clear();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter TextField Example'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(15),
//           child: Form(
//             child: Column(
//               children: <Widget>[
//                 CircleAvatar(radius: 80,),
//                 SizedBox(height: 20),
//                 Padding(
//                   padding: EdgeInsets.all(15),
//                   child: TextFormField(
//                     inputFormatters: [LengthLimitingTextInputFormatter(12)],
//                     controller: nameController,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'User Name',
//                       hintText: 'Enter Your Name',
//                     ),
//                     validator: (value) {
                
//                     if (value == null || value.trim().isEmpty) {
//                       return "Please enter your name"; 
//                     } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
//                       return "Only alphabets allowed"; 
//                     }
//                     return null; 
//                   },
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(15),
//                   child: TextField(
//                     controller: passwordController,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Password',
//                       hintText: 'Enter Password',
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: _submit,
//                       child: Text('Submit'),
                      
                      
//                     ),
//                     SizedBox(width: 10),
//                     ElevatedButton(
//                       onPressed: _clear,
//                       child: Text('Clear'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class TextFieldValidationExample extends StatefulWidget {
  const TextFieldValidationExample({super.key});

  @override
  State<TextFieldValidationExample> createState() =>
      _TextFieldValidationExampleState();
}

class _TextFieldValidationExampleState
    extends State<TextFieldValidationExample> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username cannot be empty';
    }
    if (!RegExp(r'^[a-zA-Z0-9]{4,12}$').hasMatch(value)) {
      return 'Invalid Username (4-12 characters, alphanumeric only)';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(value)) {
      return 'Invalid Password (at least 8 characters, letters & numbers)';
    }
    return null;
  }

  void _clearFields() {
    _usernameController.clear();
    _passwordController.clear();
    _formKey.currentState!.reset();
  }

  // 🔹 Show a dialog box
  void _showDialog(String title, String message, {bool isSuccess = false}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(
              isSuccess ? Icons.check_circle : Icons.error,
              color: isSuccess ? Colors.green : Colors.red,
            ),
            const SizedBox(width: 10),
            Text(title),
          ],
        ),
        content: Text(message),
        actions: [
          TextButton(
            child: const Text("OK"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  void _onSubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _showDialog("Success", "Validation Successful!", isSuccess: true);
    } else {
      _showDialog(
        "Error",
        "Please correct the highlighted fields before submitting.",
        isSuccess: false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Flutter TextField Example",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(height: 30),

                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Color.fromARGB(255, 231, 214, 255),
                ),
                const SizedBox(height: 30),

                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'User Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: _validateUsername,
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: _validatePassword,
                ),
                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: _onSubmit,
                      child: const Text("Submit"),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: _clearFields,
                      child: const Text("Clear"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
