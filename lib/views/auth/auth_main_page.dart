import 'package:flutter/material.dart';
import 'package:event_app/view_model/register_view_model.dart';
import 'package:provider/provider.dart';
import '../help/text_helper.dart';
import 'register_page.dart';
import 'sign_in_page.dart';

class AuthMainPage extends StatefulWidget {
  const AuthMainPage({Key key}) : super(key: key);

  @override
  State<AuthMainPage> createState() => _AuthMainPageState();
}

class _AuthMainPageState extends State<AuthMainPage> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * .07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).colorScheme.background),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _selectedTab(
                        context,
                        0,
                        TextHelper.signUp,
                        selectedTab == 0 ? Colors.white : Colors.grey[200],
                      ),
                      _selectedTab(
                        context,
                        1,
                        TextHelper.signIn,
                        selectedTab == 1 ? Colors.white : Colors.grey[200],
                      ),
                    ],
                  ),
                ),
                selectedTab == 0
                    ? ChangeNotifierProvider(
                        create: (_) => RegisterViewModel(),
                        child: SignUpView(),
                      )
                    : SignInPage()
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell _selectedTab(
      BuildContext context, int onTap, String tabName, Color tabColor) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedTab = onTap;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * .40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: tabColor),
        child: Center(
          child: Text(
            tabName,
          ),
        ),
      ),
    );
  }
}
