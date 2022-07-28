import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:event_app/core/services/auth.dart';

enum RegisterEnum { Idle, Lodaing, Error }

class RegisterViewModel extends ChangeNotifier {
  RegisterViewModel() {
    print("CLASS ÇAĞIRILDI");
  }

  RegisterEnum registerEnum = RegisterEnum.Idle;
  final AuthService _authService = AuthService();
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  User user;
  void register() async {
    registerEnum = RegisterEnum.Lodaing;
    notifyListeners();
    try {
      await Future.delayed(Duration(seconds: 2));
      /* user = await _authService.createPerson(
        controllerName.text,
        controllerEmail.text,
        controllerPassword.text,
      );*/
      registerEnum = RegisterEnum.Idle;
      notifyListeners();
    } catch (e) {
      registerEnum = RegisterEnum.Error;
      notifyListeners();

      print("RegisterViewModel / register $e");
    }
  }

  void signIn() {}
}
