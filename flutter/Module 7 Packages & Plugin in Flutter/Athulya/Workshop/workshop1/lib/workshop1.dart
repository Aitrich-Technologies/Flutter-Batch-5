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
                  "https://tse2.mm.bing.net/th/id/OIP.8UBYOlR_WLy5MjM8TSFx-wHaJN?pid=Api&P=0&h=180",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://tse3.mm.bing.net/th/id/OIP.jm1oZRQneHQTITLZGwPHuwHaE5?pid=Api&P=0&h=180",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),

          const SizedBox(height: 50),

          CarouselSlider(
            items: [
              Image.network(
                "https://tse1.mm.bing.net/th/id/OIP.lija4nancUeX5V_VVb4msgHaHa?pid=Api",
                fit: BoxFit.fill,
              ),

              Image.network(
                "https://tse2.mm.bing.net/th/id/OIP.8UBYOlR_WLy5MjM8TSFx-wHaJN?pid=Api&P=0&h=180",
                fit: BoxFit.fill,
              ),
              Image.network(
                "https://tse3.mm.bing.net/th/id/OIP.jm1oZRQneHQTITLZGwPHuwHaE5?pid=Api&P=0&h=180",
              ),
            ],
            options: CarouselOptions(
              enlargeCenterPage: true,
              aspectRatio: 2,
              autoPlay: auto,
              scrollDirection: Axis.vertical,
            ),
          ), //Implement the vertical carousel here

          const SizedBox(height: 15),
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
