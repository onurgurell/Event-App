import 'package:flutter/material.dart';
import 'package:event_app/core/services/auth.dart';
import 'package:event_app/views/home/home_view.dart';
import 'package:get/get.dart';
import '../../widgets/custom_sign_button.dart';
import '../../widgets/custom_text_area.dart';
import '../help/text_helper.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        height: MediaQuery.of(context).size.height * .6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              TextHelper.signIn,
              style: Theme.of(context).textTheme.headline2,
            ),
            CustomTextArea(
              controller: _controllerEmail,
              name: TextHelper.email,
            ),
            CustomTextArea(
              controller: _controllerPassword,
              name: TextHelper.password,
            ),
            CustomSignButton(
              onTap: () {
                _authService
                    .signIn(
                      _controllerEmail.text,
                      _controllerPassword.text,
                    )
                    .then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => HomeView()),
                        ),
                      ),
                    );
              },
              child: Text(TextHelper.signIn),
            )
          ],
        ),
      ),
    );
  }

  void snackBarWidget(String title, String message) {
    return Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
