import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/base/base_state.dart';

class ChartsView extends StatefulWidget {
  const ChartsView({Key? key}) : super(key: key);

  @override
  State<ChartsView> createState() => _ChartsViewState();
}

class _ChartsViewState extends State<ChartsView>
    with TickerProviderStateMixin, BaseState {
  late TabController tabController;
  late final now;
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  void initState() {
    tabController =
        TabController(length: _viewModel.months.length, vsync: this);

    super.initState();
    now = DateTime.now();
    final currentMon = now.month - 1;
    print(currentMon);
    tabController.index = currentMon;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SELECT MONTH
        SizedBox(
          width: context.dynamicWidth(.8),
          child: TabBar(
            controller: tabController,
            isScrollable: true,
            labelStyle: context.textTheme.bodyText1,
            unselectedLabelStyle: context.textTheme.subtitle1,
            indicatorPadding:
                EdgeInsets.symmetric(vertical: context.dynamicWidth(.01)),
            enableFeedback: true,
            tabs: List.generate(
              DateTime.monthsPerYear,
              (i) => Padding(
                padding: context.horizontalPaddingNormal,
                child: Tab(
                  text: _viewModel.months[i].toString(),
                ),
              ),
            ),
          ),
        ),

        // VIEW SECTION
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: List.generate(
              _viewModel.months.length,
              (index) => Text("${index + 1}"),
            ),
          ),
        ),
      ],
    );
  }
}
// Column(
//                       children: [
//                         Expanded(
//                           child: Observer(builder: (_) {
//                             return ListView.builder(
//                               itemCount: _viewModel.inputList.length,
//                               itemBuilder: (context, index) => Text(
//                                 _viewModel.inputList[index].title,
//                                 style: const TextStyle(color: Colors.white),
//                               ),
//                             );
//                           }),
//                         )
//                       ],
//                     )