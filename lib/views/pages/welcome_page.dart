import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/login_page.dart';
import 'package:flutter_app/views/pages/onboarding_page.dart';

import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 400, // desired height
                width: double.infinity,
                child: Lottie.asset(
                  'assets/lotties/welcome_animation.json',
                  fit: BoxFit
                      .fill, // this forces stretching ignoring aspect ratio
                ),
              ),
              FittedBox(
                child: Text(
                  'Study Buddy',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OnboardingPage();
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
                        return LoginPage(title: 'Login');
                      },
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
