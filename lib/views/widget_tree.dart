import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/home.dart';
import 'package:flutter_app/views/pages/profile.dart';
import 'package:flutter_app/widgets/navbar.dart';

List<Widget> pages = [Home(), Profile()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Map'), centerTitle: true),
      body: pages.elementAt(0), // Display the first page (Home) by default
      bottomNavigationBar: Navbar(),
    );
  }
}
