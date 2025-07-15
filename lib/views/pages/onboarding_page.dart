import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Lottie.asset(
                  'assets/lotties/matcher_animation.json',
                  delegates: LottieDelegates(
                    values: [
                      ValueDelegate.color(const [
                        '**',
                        'wave_2 Outlines',
                        '**',
                      ], value: AppColors.tealGreen),
                      ValueDelegate.color(const [
                        '**',
                        'wave_1 Outlines',
                        '**',
                      ], value: AppColors.warmPeach),
                      ValueDelegate.color(const [
                        '**',
                        'speaker Outlines',
                        '**',
                      ], value: AppColors.navyBlue),
                    ],
                  ),
                ),
                Text('Flutty – Find Your Study Flow'),
                Text('Match. Study. Flow'),
                SizedBox(height: 10.0),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.0),
                  ),
                  onPressed: () {},
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
