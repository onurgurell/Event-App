import 'package:flutter/material.dart';
import 'package:event_app/views/help/color_helper.dart';

import 'package:event_app/widgets/category_list_widget.dart';
import 'package:event_app/widgets/search_bar.dart';
import 'package:event_app/widgets/swipper_widget.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import '../../view_model/theme_view_model.dart';
import '../../view_model/home_view_model.dart';

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
              notificiationButton(),
              changeThemeButtonWidget(),
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

class notificiationButton extends StatelessWidget {
  const notificiationButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 25),
      child: Icon(Icons.notifications),
    );
  }
}

class changeThemeButtonWidget extends StatelessWidget {
  const changeThemeButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeViewModel>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Switch.adaptive(
          value: themeProvider.isDarkMode,
          onChanged: (value) {
            final provider =
                Provider.of<ThemeViewModel>(context, listen: false);
            provider.changeTheme(value);
          }),
    );
  }
}
