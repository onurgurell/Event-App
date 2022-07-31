import 'package:event_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:event_app/core/services/auth.dart';
import 'package:event_app/views/home/home_view.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../widgets/custom_sign_button.dart';
import '../../widgets/custom_text_area.dart';
import '../help/text_helper.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: ((context, viewModel, child) => SafeArea(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  signUpText(context),
                  getCustomTextArea(
                    viewModel.registerControllerEmail,
                    TextHelper.email,
                  ),
                  getCustomTextArea(
                    viewModel.registerControllerPassword,
                    TextHelper.password,
                  ),
                  signInButton(viewModel, context)
                ],
              ),
            ),
          )),
    );
  }

  CustomSignButton signInButton(AuthViewModel viewModel, BuildContext context) {
    return CustomSignButton(
      onTap: () {
        viewModel.signIn(context);
      },
      child: const Text(TextHelper.signIn),
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

Text signUpText(BuildContext context) {
  return Text(
    TextHelper.signIn,
    style: Theme.of(context).textTheme.headline2,
  );
}

getCustomTextArea(TextEditingController controller, String name) {
  return CustomTextArea(
    controller: controller,
    name: name,
  );
}
