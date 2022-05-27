import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../product/lang/language.dart';

class AppBarTitleRichText extends StatelessWidget with BaseState {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: LanguageItems.appBarTitleFirst,
        style: context.textTheme.bodyText1!
            .copyWith(fontWeight: FontWeight.bold, color: colorConstants.white),
        children: const <TextSpan>[
          TextSpan(
              text: LanguageItems.appBarTitleLast,
              style: TextStyle(fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }
}
