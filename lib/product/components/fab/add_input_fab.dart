import 'package:dabasirs_wallet/core/manager/navigation_manager.dart';
import 'package:dabasirs_wallet/features/add_transaction/view/add_transaction_view.dart';
import 'package:flutter/material.dart';

import '../../../core/base/base_state.dart';
import '../../../features/home/view_model/home_view_model.dart';

class AddInputFAB extends StatelessWidget with BaseState, NavigatorManager {
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => navigateToWidget(context, AddTransactionsView()),
      child: Icon(
        Icons.add,
        color: colorConstants.black,
      ),
    );
  }
}
