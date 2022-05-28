import 'package:dabasirs_wallet/features/profile/view/profile_view.dart';
import 'package:dabasirs_wallet/product/components/fab/add_input_fab.dart';

import '../../../core/base/base_state.dart';
import '../view_model/home_view_model.dart';
import '../../months/view/months_view..dart';
import '../../../product/components/rich_text/appbar_title_rich_text.dart';
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
          floatingActionButton: AddInputFAB(),
          appBar: AppBar(
            title: AppBarTitleRichText(),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
            ],
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const MonthsView(),
              ProfileView(),
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
