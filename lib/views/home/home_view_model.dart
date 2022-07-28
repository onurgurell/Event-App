// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:event_app/views/home/user_home_view.dart';

import '../details_page/details_page_view.dart';
import '../profile_page/profile_page_view.dart';
import '../ticket_page/ticket_page_view.dart';

class HomeViewModel extends ChangeNotifier {
  int _currentTab = 0;
  bool _seletcedCategory = false;

  final List<Widget> _pages = [
    UserHomeView(),
    ProfilePageView(),
    DetailsPageView(
      image: '',
    ),
    TicketPageView(),
  ];

  set currentTab(int tab) {
    this._currentTab = tab;
    notifyListeners();
  }

  set selectedCategory(bool isSelected) {
    // ignore: unnecessary_this
    this._seletcedCategory = isSelected;
  }

  get currentTab => this._currentTab;
  get pages => this._pages[this._currentTab];
  get selectedCategory => this._seletcedCategory;
}
