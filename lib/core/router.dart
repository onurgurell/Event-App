// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:event_app/core/router_constants.dart';
import 'package:event_app/views/home/home_view.dart';
import 'package:event_app/views/help/help_view.dart';
import 'package:event_app/views/details_page/details_page_view.dart';
import 'package:event_app/views/home/home_view.dart';
import 'package:event_app/views/profile_page/profile_page_view.dart';
import 'package:event_app/views/ticket_page/ticket_page_view.dart';
import 'package:event_app/widgets/onboarding_page.dart';

import '../views/auth/auth_main_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoardViewRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      case helpViewRoute:
        return MaterialPageRoute(builder: (_) => HelpView());
      case detailsPageViewRoute:
        return MaterialPageRoute(
            builder: (_) => DetailsPageView(
                  image: settings.arguments.toString(),
                  //title: settings.arguments.toString(),
                ));
      case profilePageViewRoute:
        return MaterialPageRoute(builder: (_) => ProfilePageView());
      case ticketPageViewRoute:
        return MaterialPageRoute(builder: (_) => TicketPageView());
      case onBoardingPageViewRoute:
        return MaterialPageRoute(builder: (_) => Onboarding());
      case authMainPageViewRoute:
        return MaterialPageRoute(builder: (_) => AuthMainPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
