import 'package:flutter/material.dart';
import 'package:event_app/view_model/auth_view_model.dart';
import 'package:event_app/views/help/text_helper.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../widgets/custom_sign_button.dart';
import '../../widgets/custom_text_area.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, viewModel, child) => SafeArea(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                signUpText(context),
                getCustomTextArea(
                    viewModel.registerControllerName, TextHelper.name),
                getCustomTextArea(
                    viewModel.registerControllerEmail, TextHelper.email),
                getCustomTextArea(
                    viewModel.registerControllerPassword, TextHelper.password),
                signUpButton(viewModel)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text signUpText(BuildContext context) {
    return Text(
      TextHelper.signUp,
      style: Theme.of(context).textTheme.headline2,
    );
  }

  Widget signUpButton(AuthViewModel viewModel) {
    return Consumer<AuthViewModel>(
      builder: (context, viewModel, child) => CustomSignButton(
        onTap: () {
          TextHelper.name.length > 3
              ? TextHelper.password.length >= 7
                  ? viewModel.register()
                  : snackBarWidget(
                      TextHelper.snackBarhataTitle,
                      TextHelper.snackBarMessageName,
                    )
              : snackBarWidget(
                  TextHelper.snackBarhataTitle,
                  TextHelper.snackBarMessagePassword,
                );
        },
        child: viewModel.registerEnum == RegisterEnum.Lodaing
            ? const SizedBox(
                child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                height: 20,
                width: 20,
              )
            : const Text(TextHelper.kayitOl),
      ),
    );
  }

  getCustomTextArea(TextEditingController controller, String name) {
    return CustomTextArea(
      controller: controller,
      name: name,
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
