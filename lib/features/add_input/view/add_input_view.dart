import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/core/components/column/my_column.dart';
import 'package:dabasirs_wallet/core/components/row/my_row.dart';
import 'package:dabasirs_wallet/core/manager/navigation_manager.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../product/components/add_square_container/add_square.dart';
import '../../../product/enums/category_enum.dart';
import '../../../product/model/input_model.dart';
import '../../home/view/home_vieww.dart';
import '../../home/view_model/home_view_model.dart';

class AddInputView extends StatelessWidget with NavigatorManager, BaseState {
  TextEditingController titleController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  final _model = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyColumn(
          child: MyRow(
              child: Column(
        children: [
          Expanded(child: _gecici(context)),
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

  Column _gecici(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextField(
            controller: titleController,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
        ),

        Expanded(
          child: TextField(
            controller: priceController,
            decoration: const InputDecoration(
              labelText: 'Price',
            ),
          ),
        ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Created Time',
        //   ),
        // ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            // print(titleController.text);
            var newModel = InputModel(
                title: titleController.text,
                category: categoryController.text,
                price: int.parse(priceController.text),
                createdTime: DateTime.now());
            _model.addInputList(newModel);
            // print(_model.inputList.length);
            // print(_model.inputList[0].title);
            navigateAndRemoveToWidget(context, HomeVieww());
          },
          child: const Text('Save'),
        )
      ],
    );
  }
}
