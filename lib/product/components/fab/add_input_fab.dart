import 'package:flutter/material.dart';

import '../../../core/base/base_state.dart';
import '../../../features/home/view_model/home_view_model.dart';

class AddInputFAB extends StatelessWidget with BaseState {
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _viewModel.showSelectCategoryBottomSheet(context),
      child: Icon(
        Icons.add,
        color: colorConstants.black,
      ),
    );
  }
}
