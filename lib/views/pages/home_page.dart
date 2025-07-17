import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/widgets/container_widget.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.basicLayout,
      KValue.fixBug,
      KValue.keyConcepts,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Flutty'),
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: 'Home description',
              );
            }),
            // Column(
            // children: List.generate(5, (index) {
            //   return ContainerWidget(
            //     title: 'Home',
            //     description: 'Home description',
            //   );
            // }),
            // ),
          ],
        ),
      ),
    );
  }
}
