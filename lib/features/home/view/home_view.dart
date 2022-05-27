import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/features/charts/view/charts_view.dart';
import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';
import 'package:dabasirs_wallet/product/components/rich_text/appbar_title_rich_text.dart';
import 'package:flutter/material.dart';

import '../../../core/manager/navigation_manager.dart';

class HomeView extends StatelessWidget with BaseState, NavigatorManager {
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
            onPressed: () => _viewModel.showSelectCategoryBottomSheet(context),
            child: Icon(
              Icons.add,
              color: colorConstants.black,
            ),
          ),
          appBar: AppBar(
            title: AppBarTitleRichText(),
          ),
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              ChartsView(),
              Center(
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
