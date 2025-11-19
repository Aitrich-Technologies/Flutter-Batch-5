import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: LottieScreen(),));
}



class LottieScreen extends StatefulWidget {
  const LottieScreen({super.key});

  @override
  State<LottieScreen> createState() => _LottieScreenState();
}

class _LottieScreenState extends State<LottieScreen> {
  String _currentAnimation = " anime/Cat Pookie.json";

    void _changeAnimation(String animationAsset) {       //WHEN ONE BUTTON SELECT ANIMATION SHOULD BE SELECT
    setState(() {
      _currentAnimation = animationAsset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PET SHOP"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              _currentAnimation,
              height: 400,
              width: 300,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _changeAnimation(" anime/Cat Pookie.json");
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  child: const Text("Cat"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    _changeAnimation("assets/puppy.json");
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  child: const Text("Dog"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
