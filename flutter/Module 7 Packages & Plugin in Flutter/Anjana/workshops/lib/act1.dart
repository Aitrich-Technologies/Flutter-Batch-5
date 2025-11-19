
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carousel1 extends StatefulWidget {
  const carousel1({super.key});

  @override
  State<carousel1> createState() => CarouselState();
}

class CarouselState extends State<carousel1> {
  final CarouselController carousel1 = CarouselController();
  final CarouselController carousel2 = CarouselController();
  bool auto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Custom Carousel",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 2,
                autoPlay: auto,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9EZNefY1fRsA4qVFTBviWyj-5KHY6U8LG0g&s",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqiW0KMsGsZHuve8dnIUxU9lM_OUYxnwUlmg&s",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoBuMvSuYezLE9rwI-zOJeIOmcIGfDPqOvFA&s",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),         
                  //Implement the vertical carousel here
          SizedBox(
          height: 300,
          child: CarouselSlider(
              options:  CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 2,
                autoPlay: auto,
                scrollDirection: Axis.vertical,
              ),
              items: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9EZNefY1fRsA4qVFTBviWyj-5KHY6U8LG0g&s",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqiW0KMsGsZHuve8dnIUxU9lM_OUYxnwUlmg&s",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoBuMvSuYezLE9rwI-zOJeIOmcIGfDPqOvFA&s",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),    
        
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            auto = !auto;
          });
        },
        child: const Icon(Icons.stop_sharp),
      ),
    );
  }
}