import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/column/my_column.dart';
import '../../../core/components/row/my_row.dart';
import '../../enums/category_enum.dart';
import '../add_square_container/add_square.dart';

class SelectCategoryBottomSheet extends StatelessWidget with BaseState {
  final HomeViewModel _viewModel = HomeViewModel();
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MyColumn(
          child: MyRow(
              child: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: TextField(
                controller: titleController,
                textAlign: TextAlign.center,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                autofocus: true,
                // controller: titleController,
                decoration: const InputDecoration(hintText: "Definition"),
              )),
              context.emptySizedWidthBoxNormal,
              Expanded(
                child: TextField(
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
            child: Row(
              children: [
                Expanded(
                  child: AddSquare(
                    category: CategoryEnum.Income.name,
                    color: colorConstants.caribbienGreen,
                    onTap: () {},
                  ),
                ),
                context.emptySizedWidthBoxNormal,
                Expanded(
                  child: AddSquare(
                    category: CategoryEnum.Expenses.name,
                    color: colorConstants.metroidRed,
                    onTap: () {},
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
                    category: CategoryEnum.Savings.name,
                    color: colorConstants.shadyNeonBlue,
                    onTap: () {},
                  ),
                ),
                context.emptySizedWidthBoxNormal,
                Expanded(
                  child: AddSquare(
                    category: CategoryEnum.Stuffs.name,
                    color: colorConstants.blueAngelsYellow,
                    onTap: () {},
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
