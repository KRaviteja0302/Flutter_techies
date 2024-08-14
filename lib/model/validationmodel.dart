import 'package:flutter/material.dart';
import 'package:mechanic_on_wheels/extensions/string_ext.dart';


import '../modules/signup_screen_module/signup_screen.dart';
import 'error_value.dart';

class ValidationModel {
  ErrorValueModel email = ErrorValueModel(null, null);
  ErrorValueModel password = ErrorValueModel(null, null);

  bool get isValid => email.value != null && password.value != null;

  validateEmail(String value) {
    if (value.isValidEmail) {
      email = ErrorValueModel(value, null);
    } else {
      email = ErrorValueModel(null, "Please Enter a valid email");
    }
  }

  validatePassword(String value) {
    if (value.isValidPassword) {
      password = ErrorValueModel(value, null);
    } else {
      password = ErrorValueModel(null,
          "Password must be at least 8 characters with  least one letter, one number and one special character");
    }
  }

  login(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => SignUpScreen()),
        (route) => false);
  }
}
