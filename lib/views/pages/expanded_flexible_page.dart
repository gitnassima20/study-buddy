import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(color: AppColors.tealGreen)),
              Flexible(
                child: Container(
                  color: AppColors.warmPeach,
                  height: 20.0,
                  child: Text('I am Flexible'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
