import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'myhero',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Image.asset(
                'assets/images/nature.png',
                fit: BoxFit.cover,
                color: Colors.teal,
                colorBlendMode: BlendMode.modulate,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              letterSpacing: 8.0,
              color: Colors.white60,
            ),
          ),
        ),
      ],
    );
  }
}
