import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'profile_page_view_model.dart';
          
class ProfilePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfilePageViewModel>.reactive(
      builder: (BuildContext context, ProfilePageViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('ProfilePage View'),
          ),
        );
      },
      viewModelBuilder: () => ProfilePageViewModel(),
    );
  }
}
