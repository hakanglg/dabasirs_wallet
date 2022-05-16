import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/core/components/column/my_column.dart';
import 'package:dabasirs_wallet/core/components/row/my_row.dart';
import 'package:dabasirs_wallet/core/manager/navigation_manager.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

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
        appBar: AppBar(
          title: const Text('Add Input'),
        ),
        body: MyRow(
          child: MyColumn(
            child: Column(
              children: [
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: borderConstants.radiusRoundedAllLow,
                              color: colorConstants.caribbienGreen,
                            ),
                          ),
                        ),
                        context.emptySizedHeightBoxLow3x,
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: borderConstants.radiusRoundedAllLow,
                              color: colorConstants.shadyNeonBlue,
                            ),
                          ),
                        ),
                        context.emptySizedHeightBoxLow3x,
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: borderConstants.radiusRoundedAllLow,
                              color: colorConstants.blueAngelsYellow,
                            ),
                          ),
                        ),
                        context.emptySizedHeightBoxLow3x,
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: borderConstants.radiusRoundedAllLow,
                              color: colorConstants.metroidRed,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }

  Column _gecici(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: titleController,
          decoration: const InputDecoration(
            labelText: 'Title',
          ),
        ),
        TextField(
          controller: categoryController,
          decoration: const InputDecoration(
            labelText: 'Category',
          ),
        ),
        TextField(
          controller: priceController,
          decoration: const InputDecoration(
            labelText: 'Price',
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
