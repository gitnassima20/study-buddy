import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget_tree.dart';

import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400, // desired height
              width: double.infinity,
              child: Lottie.asset(
                'assets/lotties/welcome_animation.json',
                fit:
                    BoxFit.fill, // this forces stretching ignoring aspect ratio
              ),
            ),
            FittedBox(
              child: Text(
                'Flutty',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50.0),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text('Get Started'),
            ),
            TextButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50.0),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
