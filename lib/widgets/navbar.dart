import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onDestinationSelected: (int value) {
        setState(() {
          selectedIndex = value;
        });
      },
      selectedIndex: selectedIndex,
    );
  }
}
