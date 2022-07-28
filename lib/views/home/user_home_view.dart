import 'package:flutter/material.dart';
import 'package:event_app/views/help/color_helper.dart';

import 'package:event_app/widgets/category_list_widget.dart';
import 'package:event_app/widgets/search_bar.dart';
import 'package:event_app/widgets/swipper_widget.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class UserHomeView extends StatefulWidget {
  @override
  _UserHomeViewState createState() => _UserHomeViewState();
}

class _UserHomeViewState extends State<UserHomeView> {
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (BuildContext context, HomeViewModel viewModel, Widget _) {
        return Scaffold(
          drawer: const Drawer(),
          appBar: AppBar(
            backgroundColor: ColorHelper.backgroundColor,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.notifications),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //search bar
                SearchBar(),
                const SizedBox(
                  height: 15,
                ),
                //categories
                CategoryWidget(),
                //text music and see all
                const SizedBox(
                  height: 35,
                ),
                SwipperWidget(),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
