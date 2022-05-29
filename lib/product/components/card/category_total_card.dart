import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/core/components/text/custom_body_text.dart';
import 'package:dabasirs_wallet/core/components/text/custom_headline.text.dart';
import 'package:dabasirs_wallet/core/constants/enums/currency_unit_enum.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/components/container/custom_square.dart';
import '../../../core/constants/enums/category_enum.dart';

class CategoryTotalCard extends StatelessWidget with BaseState {
  final Color color;
  final Category category;
  final CurrencyUnit currencyUnit;
  final int? totalAmount;

  CategoryTotalCard(
      {Key? key,
      required this.color,
      required this.category,
      this.currencyUnit = CurrencyUnit.USD,
      this.totalAmount = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSquare(
      border: null,
      height: context.dynamicHeight(.15),
      width: null,
      color: color,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBodyText(
              text: currencyUnit.name,
            ),
            context.emptySizedHeightBoxLow,
            CustomHeadlineText(text: totalAmount.toString(),),
            const Spacer(),
            CustomBodyText(text: "Total " + category.name),
            context.emptySizedHeightBoxLow
          ],
        ),
      ),
    );
  }
}
