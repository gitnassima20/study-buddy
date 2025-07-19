import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title, this.nextPage});

  final String title;
  final Widget? nextPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return nextPage!;
                  },
                ),
              );
            }
          : null,
      child: Stack(
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
                  color: AppColors.navyBlue,
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
      ),
    );
  }
}
