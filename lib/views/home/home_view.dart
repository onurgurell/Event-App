import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../view_model/home_view_model.dart';

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
          floatingActionButton: _floatingActionBttn(context),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: _customAnimatedBottomBar(viewModel),
        ),
      ),
    );
  }

  FloatingActionButton _floatingActionBttn(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      backgroundColor:
          Theme.of(context).floatingActionButtonTheme.backgroundColor,
      onPressed: () {},
    );
  }

  AnimatedBottomNavigationBar _customAnimatedBottomBar(
      HomeViewModel viewModel) {
    return AnimatedBottomNavigationBar(
      gapLocation: GapLocation.center,
      icons: iconList,
      activeIndex: viewModel.currentTab,
      onTap: (int isSelected) {
        viewModel.currentTab = isSelected;
      },
      notchSmoothness: NotchSmoothness.verySmoothEdge,
    );
  }
}
