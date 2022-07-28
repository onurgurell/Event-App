import 'package:flutter_onboarding_screen/OnbordingData.dart';

class OnBoardingList {
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: 'assets/images/onboarding/party.png',
      title: "Welcome",
      desc:
          "Get ready to know where and when all the fun is at any moment and the big party is waiting for you",
    ),
    OnbordingData(
      imagePath: 'assets/images/onboarding/party2.jpg',
      title: "Order",
      desc:
          "Best restaurants delivering to your doorstep, Browse menus and build your order in seconds",
    ),
  ];
}
