import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomBodyText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color? color;

  const CustomBodyText(
      {Key? key,
      required this.text,
      this.fontWeight = FontWeight.normal,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: context.textTheme.bodyText1!
            .copyWith(fontWeight: fontWeight, color: color));
  }
}
