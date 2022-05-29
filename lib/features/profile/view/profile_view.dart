import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/core/components/column/my_column.dart';
import 'package:dabasirs_wallet/core/components/row/my_row.dart';
import 'package:dabasirs_wallet/core/constants/enums/category_enum.dart';
import 'package:dabasirs_wallet/product/components/card/category_total_card.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/components/text/custom_headline.text.dart';
import '../../../core/constants/enums/currency_unit_enum.dart';
import '../../months/view_model/months_view_model.dart';

class ProfileView extends StatelessWidget with BaseState {
  final userName = "Hakan GÖLGE";
  var savingTotalAmount = 1000;
  var expensesTotalAmount = 8000;
  var incomeTotalAmount = 10000;

  final MonthsViewModel _viewModel = MonthsViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyRow(
          child: MyColumn(
            child: Column(
              children: [
                profileIconWithName(context),
                _TotalCards(context),
                context.emptySizedHeightBoxNormal,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded _TotalCards(BuildContext context) {
    return Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        _TotalExpensesCard(),
                        context.emptySizedWidthBoxNormal,
                        _TotalSavingCard()
                      ],
                    ),
                    context.emptySizedHeightBoxLow3x,
                    _TotalIncomeCard()
                  ],
                ),
              );
  }

  Expanded _TotalExpensesCard() {
    return Expanded(child: Observer(
                          builder: (_) {
                            return CategoryTotalCard(
                              category: Category.Expenses,
                              color: colorConstants.metroidRed,
                              currencyUnit: CurrencyUnit.USD,
                              totalAmount: _viewModel.expensesTotal.toInt(),
                            );
                          },
                        ));
  }

  Expanded _TotalSavingCard() {
    return Expanded(child: Observer(
                          builder: (_) {
                            return CategoryTotalCard(
                              category: Category.Savings,
                              color: colorConstants.shadyNeonBlue,
                              currencyUnit: CurrencyUnit.USD,
                              totalAmount: _viewModel.savingsTotal.toInt(),
                            );
                          },
                        ));
  }

  Observer _TotalIncomeCard() {
    return Observer(
                      builder: (_) {
                        return CategoryTotalCard(
                          category: Category.Income,
                          color: colorConstants.caribbienGreen,
                          currencyUnit: CurrencyUnit.USD,
                          totalAmount: _viewModel.incomeTotal.toInt(),
                        );
                      },
                    );
  }

  Expanded profileIconWithName(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        (Icon(
          Icons.account_circle_rounded,
          size: 150,
          color: colorConstants.lunarDust,
        )),
        context.emptySizedHeightBoxLow,
        CustomHeadlineText(text: userName),
      ],
    ));
  }
}
