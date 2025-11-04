
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
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
                  "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://images5.alphacoders.com/133/1338179.png",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          
          const SizedBox(
            height: 50,
            
          
          ),
         
                  //Implement the vertical carousel here





          const SizedBox(
            height: 15,
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