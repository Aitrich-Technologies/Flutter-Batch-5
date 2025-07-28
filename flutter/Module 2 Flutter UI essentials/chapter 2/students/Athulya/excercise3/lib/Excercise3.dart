

import 'package:flutter/material.dart';

class Excercise3 extends StatefulWidget {
  const Excercise3({super.key});

  @override
  State<Excercise3> createState() => _Excercise3State();
}

class _Excercise3State extends State<Excercise3> {
  // Image URLs
  List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2016/02/17/15/37/laptop-1205256_1280.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIfwFpCpsivMUIh3DSl66wHYb0kZOuOiSAsxoR5v4XJKYn_uL6PsPoLK47ya5wa8c6zpY&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOECX-ASpLVP2I6i8wB0zZYwVXhv_jBdC2U5lbCnl-IUqIXYE2DfejPmh1aCyNUccx1Yw&usqp=CAU',
    'https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/FL2C-A-BB-00?qlt=90&wid=1253&hei=705&extendN=0.12,0.12,0.12,0.12&bgc=FFFFFFFF&fmt=jpg',
  ];

  // Texts under each image
  List<String> imageTitles = [
    'Laptop',
    'Office Desk',
    'Modern Setup',
    'Surface Device',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("AppBar"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 16, top: 18),
            child: Text(
              "Promotions",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.asset("image/phone.jpeg", fit: BoxFit.cover),
          ),
          Padding(padding: EdgeInsets.only(left: 16, top: 18)),
          Text(
            "Featured products",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, height: 0.02),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: imagesList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(imagesList[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      imageTitles[index],
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}

