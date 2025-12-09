import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class validation1 extends StatefulWidget {
  const validation1({super.key});

  @override
  State<validation1> createState() => _validation1State();
}

class _validation1State extends State<validation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,centerTitle: true,title: Text("Welcome"),),
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(keyboardType: TextInputType.name,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),],
                decoration: InputDecoration(labelText: "Name",border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
                ),
              ),SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly
                , LengthLimitingTextInputFormatter(10), ],
                decoration: InputDecoration(
                  labelText: "Number",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.name,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(6)
               ],
               decoration: InputDecoration(
                labelText: "Pincode",border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
               ),
              ),SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}