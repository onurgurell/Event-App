import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';

import 'core/locator.dart';
import 'core/router_constants.dart';
import 'core/router.dart' as router;
import 'theme/my_theme.dart';
import 'view_model/auth_view_model.dart';
import 'view_model/theme_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await LocatorInjector.setUpLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeViewModel(),
          builder: (context, _) {
            final themeProvider = Provider.of<ThemeViewModel>(context);
            return MaterialApp(
              themeMode: themeProvider.themeMode,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.darkTheme,
              debugShowCheckedModeBanner: false,
              navigatorKey: locator<NavigationService>().navigatorKey,
              onGenerateRoute: router.Router.generateRoute,
              initialRoute: onBoardingPageViewRoute,
            );
          },
        )
      ],
    );
  }
}
