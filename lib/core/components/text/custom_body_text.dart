import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomBodyText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;

  const CustomBodyText(
      {Key? key, required this.text, this.fontWeight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: context.textTheme.bodyText1!.copyWith(fontWeight: fontWeight));
  }
}
