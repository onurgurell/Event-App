import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';
import 'package:event_app/core/models/onboarding_list.dart';
import 'package:event_app/views/home/home_view.dart';
import 'package:event_app/core/router.dart' as router;

import '../views/auth/register_page.dart';

// ignore: must_be_immutable
class Onboarding extends StatelessWidget {
  List<OnbordingData> onBoardingList = OnBoardingList().list;

  Onboarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroScreen(
      onBoardingList,
      MaterialPageRoute(
        builder: (context) => SignUpView(),
      ),
    ));
  }
}
