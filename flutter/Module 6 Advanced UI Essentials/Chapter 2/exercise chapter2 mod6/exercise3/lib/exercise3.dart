import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Exercise3()));
}

class Exercise3 extends StatefulWidget {
  const Exercise3({super.key});

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  final List<String> gender = ["female", "male", "other"];
  final TextEditingController name = TextEditingController();
  final TextEditingController mobilenumber = TextEditingController();
  final TextEditingController pincode = TextEditingController();
  String? nameerror ;
  String? numbererror ;
  String? pinerror
;
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Simple interest calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),

            child: CircleAvatar(
              radius: 100,
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png",
              ),
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: name,
              decoration: InputDecoration(
                errorText: nameerror,
                labelText: "name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),onChanged: (value) {
                setState(() {
                  nameerror = validatename(value);
                });
              },
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(maxLength: 10,controller: mobilenumber,
              decoration: InputDecoration(
                errorText: numbererror,
                
                labelText: "mobilenumber",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),onChanged: (value) {
                setState(() {
                  numbererror = validatenumber(value);
                });
              },
            ),
          ),
          SizedBox(height: 30),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(maxLength: 6,
                  controller: pincode,
                    decoration: InputDecoration(
                      errorText: pinerror,
                      labelText: "pincode",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),onChanged: (value) {
                      setState(() {
                        pinerror = validationpin(value);
                      }); } ),), ),
              SizedBox(width: 20),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      isExpanded: true,
                      items: gender.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                      decoration: InputDecoration(
                        label: Text("Gender"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex: 1,child: ElevatedButton(onPressed: () {
                  setState(() {
                     nameerror = validatename(name.text);
                     numbererror = validatenumber(mobilenumber.text);
                     pinerror = validationpin(pincode.text);
                    if (nameerror == null && numbererror ==null && pinerror ==null) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("registered succesfully")));
                      
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("please fill all the field correctly")));
                    }
                  });
                }, child: Text("Register",),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                minimumSize: Size(100, 50)),)),
                SizedBox(width: 20),
                Expanded(flex: 1,child: ElevatedButton(onPressed: () {
                  setState(() {
                    name.clear();
                    mobilenumber.clear();
                    pincode.clear();
                    
                  });
                }, child: Text("Clear"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,
                minimumSize: Size(100, 50)),)),
              ],
            ),
          
        ],
      ),
    );
  }
}

String? validatenumber(String mobilenumber) {
  if (mobilenumber.isEmpty) {
    return "mobile number is required";
    
  }
  return null;
}

String? validationpin(String pincode) {
  if (pincode.isEmpty) {
    return "pincode is required";
    
  }
  return null;
}

String? validatename(String name) {
  if (name.isEmpty ) {
    return "name is required";
    
  }
  
  return null;
}

