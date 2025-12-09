import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Exercise extends StatefulWidget {
  const Exercise({super.key});

  @override
  State<Exercise> createState() => _ExerciseState();
}
class _ExerciseState extends State<Exercise> {

  final CarouselSliderController _horizontalController=CarouselSliderController();
  final CarouselSliderController _verticalController=CarouselSliderController();
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Carousel"),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(onPressed:(){
            _horizontalController.previousPage(
              duration:const Duration(milliseconds: 300),
              curve:Curves.ease
            );
            _verticalController.previousPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease
            );
          }, 
          icon: Icon(Icons.arrow_back_ios)),
          IconButton(onPressed: (){
            _horizontalController.nextPage(
              duration:Duration(milliseconds: 300),
              curve:Curves.ease
            );
              _verticalController.nextPage(
              duration:Duration(milliseconds: 300),
              curve:Curves.ease
            );
          }, icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: CarouselSlider(
                carouselController:_horizontalController,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 2,
                  scrollDirection: Axis.horizontal,
                  autoPlay: isPlaying, 
                  autoPlayInterval: const Duration(seconds: 2),
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
              carouselController: _verticalController,
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
                  fit: BoxFit.fill,
                ),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 2,
                scrollDirection: Axis.vertical,
                autoPlay: isPlaying, 
                autoPlayInterval: const Duration(seconds: 2),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {
          setState(() {
            isPlaying = !isPlaying; 
          });
        },
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow, 
        ),
      ),
    );
  }
}





