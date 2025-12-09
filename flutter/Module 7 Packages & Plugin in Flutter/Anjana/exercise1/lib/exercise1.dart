import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/src/animated_text.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animals"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.teal,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ColorizeAnimatedText(
                      textAlign: TextAlign.center,
                      "cat",
                      textStyle: TextStyle(fontSize: 30),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                      speed: Duration(seconds: 1),
                    ),
                    ColorizeAnimatedText(
                      textAlign: TextAlign.center,
                      "Dog",
                      textStyle: TextStyle(fontSize: 30),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                      speed: Duration(seconds: 1),
                    ),
                    ColorizeAnimatedText(
                      textAlign: TextAlign.center,
                      "Owl",
                      textStyle: TextStyle(fontSize: 30),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                      speed: Duration(seconds: 1),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.orange,
                child: Center(
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText(
                        "Rabbit",
                        textAlign: TextAlign.center,
                        textStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.white, // optional: improves visibility
                        ),
                        duration: const Duration(milliseconds: 400),
                      ),
                      RotateAnimatedText(
                        "Snake",
                        textAlign: TextAlign.center,
                        textStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                        duration: const Duration(milliseconds: 400),
                      ),
                      RotateAnimatedText(
                        "Hamster",
                        textAlign: TextAlign.center,
                        textStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                        duration: const Duration(milliseconds: 400),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: 150,
                width: double.infinity,
                color: Colors.blue,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ScaleAnimatedText(
                      "Camel",
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(fontSize: 30),
                      duration: Duration(milliseconds: 400),
                    ),
                    ScaleAnimatedText(
                      "Cow",
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(fontSize: 30),
                      duration: Duration(milliseconds: 400),
                    ),
                    ScaleAnimatedText(
                      "Goat",
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(fontSize: 30),
                      duration: Duration(milliseconds: 400),
                    ),
                  ],
                ),
              ),

              Container(
                height: 150,
                width: double.infinity,
                color: Colors.brown,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText(
                      "White Molly",
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(fontSize: 30),
                      duration: Duration(milliseconds: 400),
                    ),
                    FadeAnimatedText(
                      "Black Molly",
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                      ),
                      duration: Duration(milliseconds: 400),
                    ),
                    FadeAnimatedText(
                      "Guppy",
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(fontSize: 30),
                      duration: Duration(milliseconds: 400),
                    ),
                  ],
                ),
              ),

              Container(
                height: 150,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        "siberian cat",
                        textStyle: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      TyperAnimatedText(
                        "american curl",
                        textStyle: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      TyperAnimatedText(
                        "persian cat",
                        textStyle: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      TyperAnimatedText(
                        "calico",
                        textStyle: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
