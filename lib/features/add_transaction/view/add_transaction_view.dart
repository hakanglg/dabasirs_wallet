import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/core/manager/navigation_manager.dart';
import 'package:dabasirs_wallet/features/months/view_model/months_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/column/my_column.dart';
import '../../../core/components/row/my_row.dart';
import '../../../core/constants/enums/category_enum.dart';
import '../../../product/components/add_square_container/add_square.dart';
import '../../../product/model/input_model.dart';

class AddTransactionsView extends StatelessWidget
    with BaseState, NavigatorManager {
  final MonthsViewModel _viewModel = MonthsViewModel();
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: MyColumn(
          child: MyRow(
              child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    enabled: true,
                    controller: titleController,
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    // keyboardType: TextInputType.text,
                    autofocus: true,

                    decoration: const InputDecoration(hintText: "Definition"),
                  )),
                  context.emptySizedWidthBoxNormal,
                  Expanded(
                    child: TextField(
                      enabled: true,
                      controller: priceController,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      // controller: titleController,
                      decoration: const InputDecoration(
                        hintText: '\$0',
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: AddSquare(
                    category: Category.Savings.name,
                    color: colorConstants.shadyNeonBlue,
                    onTap: () {
                      _viewModel.addInputList(InputModel(
                          title: titleController.text,
                          price: int.parse(priceController.text),
                          category: Category.Savings,
                          createdTime: DateTime.now()));

                      navigateToBack(context);
                    },
                  ),
                ),
                context.emptySizedWidthBoxNormal,
                Expanded(
                  child: AddSquare(
                    category: Category.Expenses.name,
                    color: colorConstants.metroidRed,
                    onTap: () {
                      _viewModel.addInputList(InputModel(
                          title: titleController.text,
                          price: int.parse(priceController.text),
                          category: Category.Expenses,
                          createdTime: DateTime.now()));
                      navigateToBack(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          context.emptySizedHeightBoxLow3x,
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: AddSquare(
                    category: Category.Income.name,
                    color: colorConstants.caribbienGreen,
                    onTap: () {
                      _viewModel.addInputList(InputModel(
                          title: titleController.text,
                          price: int.parse(priceController.text),
                          category: Category.Income,
                          createdTime: DateTime.now()));
                      navigateToBack(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ))),
    );
  }
}
