import 'package:flutter/material.dart';

import '../../base/base_state.dart';

class CustomTextField extends StatelessWidget with BaseState {
  final TextInputType keyboardType;
  final InputDecoration inputDecoration;
  final String autofillHints;
  final TextInputAction textInputActions;
  final bool isUnvisible;

  CustomTextField({
    Key? key,
    required this.keyboardType,
    required this.inputDecoration,
    required this.autofillHints,
    required this.textInputActions,
    this.isUnvisible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: context.dynamicHeight(0.07),
      child: TextField(
        decoration: inputDecoration,
        keyboardType: keyboardType,
        autofillHints: [autofillHints],
        textInputAction: textInputActions,
        obscureText: isUnvisible,
      ),
    );
  }
}
