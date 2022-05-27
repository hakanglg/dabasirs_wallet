import 'package:flutter/material.dart';
import '../../../product/lang/language.dart';

class InputDecorator {
  static InputDecorator instance = InputDecorator._init();
  InputDecorator._init();

  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    hintText: LanguageItems.mailText,
  );
  final passwordInput = const InputDecoration(
    prefixIcon: Icon(Icons.key_rounded),
    hintText: LanguageItems.passwordText,
  );
}
