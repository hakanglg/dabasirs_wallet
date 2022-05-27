import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomSubtitleText extends StatelessWidget {
  final String text;

  const CustomSubtitleText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: context.textTheme.subtitle2);
  }
}
