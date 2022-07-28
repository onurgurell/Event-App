import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:event_app/views/home/home_view.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.airplane_ticket,
    Icons.location_on_outlined,
    Icons.account_circle,
  ];
  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      gapLocation: GapLocation.center,
      icons: iconList,
      activeIndex: selectedIndex,
      onTap: _onItemTapped,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      selectedIndex = value;
    });
  }
}
