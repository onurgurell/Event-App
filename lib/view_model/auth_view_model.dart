import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:event_app/core/services/auth.dart';
import 'package:flutter/material.dart';

import '../views/home/home_view.dart';

enum RegisterEnum { Idle, Lodaing, Error }

class AuthViewModel extends ChangeNotifier {
  AuthViewModel() {
    print("CLASS ÇAĞIRILDI");
  }

  RegisterEnum registerEnum = RegisterEnum.Idle;
  final AuthService _authService = AuthService();
  //sign-up controller
  final TextEditingController registerControllerName = TextEditingController();
  final TextEditingController registerControllerEmail = TextEditingController();
  final TextEditingController registerControllerPassword =
      TextEditingController();
  //sign-in controller
  final TextEditingController signControllerEmail = TextEditingController();
  final TextEditingController signControllerPassword = TextEditingController();

  User user;

  //register page
  void register() async {
    registerEnum = RegisterEnum.Lodaing;
    notifyListeners();
    try {
      await Future.delayed(Duration(seconds: 2));
      user = await _authService.createPerson(
        registerControllerName.text,
        registerControllerEmail.text,
        registerControllerPassword.text,
      );
      registerEnum = RegisterEnum.Idle;
      notifyListeners();
    } catch (e) {
      registerEnum = RegisterEnum.Error;
      notifyListeners();

      print("RegisterViewModel / register $e");
    }
  }

//sig-in page
  void signIn(BuildContext context) {
    try {
      _authService
          .signIn(
            signControllerEmail.text,
            signControllerPassword.text,
          )
          .then(
            (value) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => HomeView()),
              ),
            ),
          );
      registerEnum = RegisterEnum.Idle;
      notifyListeners();
      print('uygulamaya başarılı bir şekilde giriş yapıldı');
    } catch (e) {
      registerEnum = RegisterEnum.Error;
      notifyListeners();
    }
  }
}
