import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final CarouselSliderController horizontal = CarouselSliderController();
  final CarouselSliderController vertical = CarouselSliderController();
    bool auto = true;
  final List<String> imageurl = [
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiMaRhCJpbCIo9Eufpd1zni0UqvG5CKfC1MQ&s",
    "https://tse1.mm.bing.net/th/id/OIP.lija4nancUeX5V_VVb4msgHaHa?pid=Api"
     "https://tse3.mm.bing.net/th/id/OIP.jm1oZRQneHQTITLZGwPHuwHaE5?pid=Api&P=0&h=180 ",
                  
  ]     ;   
  int currentindex=0;      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("carousal slider"),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: () {
           horizontal.previousPage(duration: Duration(milliseconds: 400),curve: Curves.easeIn);
           vertical.previousPage(duration: Duration(milliseconds: 400),curve: Curves.easeIn);
          }, icon: Icon(Icons.arrow_back_ios)),
          IconButton(onPressed: () {
            horizontal.nextPage(duration: Duration(milliseconds: 400),curve: Curves.ease);
            vertical.nextPage(duration: Duration(milliseconds: 400),curve: Curves.ease);
          }, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                carouselController: horizontal,
                
                
                items:imageurl
                    .map(
                      (url) => ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: 250,
                  aspectRatio: 2,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  scrollDirection: Axis.horizontal
                ),
              ),
            ),SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(carouselController: vertical,
                items:imageurl
                    .map(
                      (url) => ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: 250,
                  aspectRatio: 1,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  scrollDirection: Axis.vertical
                ),
              ),
            ),
          ],
        ),
      ),floatingActionButton:FloatingActionButton(onPressed: (){
        setState(() {
          auto = !auto;
        }
        );
      },child: Icon(Icons.stop,color: Colors.black38,),
      ) ,
    );
  }
}

