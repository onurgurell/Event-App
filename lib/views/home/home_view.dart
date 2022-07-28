import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  final iconList = <IconData>[
    Icons.home,
    Icons.airplane_ticket,
    Icons.location_on_outlined,
    Icons.account_circle,
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, viewModel, child) => Scaffold(
          body: viewModel.pages,
          floatingActionButton: const FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.black,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            gapLocation: GapLocation.center,
            icons: iconList,
            activeIndex: viewModel.currentTab,
            onTap: (int isSelected) {
              viewModel.currentTab = isSelected;
            },
            notchSmoothness: NotchSmoothness.verySmoothEdge,
          ),
        ),
      ),
    );
  }
}
