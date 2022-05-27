import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomHeadlineText extends StatelessWidget {
  final String text;

  const CustomHeadlineText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: context.textTheme.headline5);
  }
}
