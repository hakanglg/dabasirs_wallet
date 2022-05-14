import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/core/constants/app/app_constants.dart';
import 'package:dabasirs_wallet/core/constants/color/color_constants.dart';
import 'package:dabasirs_wallet/features/add_input/view/add_input_view.dart';
import 'package:dabasirs_wallet/features/charts/view/charts_view.dart';
import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';

import '../../../core/manager/navigation_manager.dart';

class HomeVieww extends StatelessWidget with BaseState, NavigatorManager {
  final HomeViewModel _viewModel = HomeViewModel();
  final _defaultTabController = 2;
  final double _notchedValue = 10.0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _defaultTabController,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () => navigateToWidget(context, AddInputView()),
            child: Icon(
              Icons.add,
              color: colorConstants.black,
            ),
          ),
          appBar: AppBar(
            title: const Text(ApplicationConstants.APP_TITLE),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ChartsView(),
              const Center(
                child: Text("Profile"),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
              notchMargin: _notchedValue,
              child: const TabBar(tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.person)),
              ])),
        ));
  }
}

class _ShowBottomModelSheetFAB extends StatelessWidget {
  const _ShowBottomModelSheetFAB({
    Key? key,
    required HomeViewModel viewModel,
    required this.colorConstants,
  })  : _viewModel = viewModel,
        super(key: key);

  final HomeViewModel _viewModel;
  final ColorConstants colorConstants;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _viewModel.dummyVoid,
      child: Icon(
        Icons.add,
        color: colorConstants.black,
      ),
    );
  }
}
