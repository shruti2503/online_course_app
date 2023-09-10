import 'package:flutter/material.dart';

class BgDecor extends StatelessWidget {
  const BgDecor({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -80,
          right: -200,
          left: 50,
          child: Image.asset(
            "assets/Backgrounds/Vector (4).png",
          ),
        ),
        Positioned(
          top: 100,
          right: 50,
          left: -200,
          child: Image.asset(
            "assets/Backgrounds/Vector (5).png",
          ),
        ),
        Positioned(
          bottom: 50,
          left: 50,
          right: -200,
          child: Image.asset(
            "assets/Backgrounds/Vector (5).png",
          ),
        ),
        Positioned(
          bottom: -250,
          left: -200,
          right: 50,
          child: Image.asset(
            "assets/Backgrounds/Vector (7).png",
          ),
        ),
        Positioned(
          top: -100,
          right: 0,
          left: 50,
          child: Image.asset(
            "assets/Backgrounds/Vector (8).png",
          ),
        ),
        Positioned(
          top: -500,
          left: -100,
          right: -100,
          bottom: -500,
          child: Image.asset(
            "assets/Backgrounds/Vector 3.png",
          ),
        ),
      ],
    );
  }
}
