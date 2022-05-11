import 'package:dabasirs_wallet/core/manager/navigation_manager.dart';
import 'package:flutter/material.dart';

import '../../home/view_model/home_view_model.dart';

class AddInputView extends StatelessWidget with NavigatorManager {
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
        body: Column(
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
                // var newModel = InputModel(
                //     titleController.text, categoryController.text, priceController.text, DateTime.now());
                // _model.addDummyList(newModel);
                // print(_model.dummyList.length);
                // navigateToWidget(context, HomeView());
              },
              child: const Text('Save'),
            )
          ],
        ));
  }
}
