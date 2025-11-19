import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class Excercise1 extends StatefulWidget {
  const Excercise1({super.key});
  @override
  State<Excercise1> createState() => _Excercise1State();
}
class _Excercise1State extends State<Excercise1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Animals"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 550,
                color: Colors.amber,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ScaleAnimatedText(
                        'Dog',
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,),),],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,))),
              Container(
                height: 150,
                width: 550,
                color: Colors.blue,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'cat',
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,),
                        speed: const Duration(milliseconds: 100),),],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,)),),
              Container(
                height: 150,
                width: 550,
                color: Colors.red,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        'Lion',
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ),),],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,),),),
              Container(
                height: 150,
                width: 550,
                color: Colors.orange,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        'Elephant',
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyanAccent,
                        ),),],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,),),),
              Container(
                height: 150,
                width: 550,
                color: Colors.purple,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        'Rat',
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,),
                        speed: const Duration(milliseconds: 100),
                      ),],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,),)),
              Container(
                height: 150,
                width: 550,
                color: Colors.limeAccent,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Monkey',
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,),
                        speed: const Duration(milliseconds: 100),
                        colors: [
                          Colors.yellow,
                          Colors.purple,
                          Colors.red,
                          Colors.blue,
                      ],),],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),),),],),),),);}}
