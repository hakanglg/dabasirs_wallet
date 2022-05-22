import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';
import '../../../core/base/base_state.dart';
import '../../../product/components/charts/piee_charts.dart';
import '../../../product/model/input_model.dart';

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
    // print(currentMon);
    tabController.index = currentMon;

    // print(_viewModel.inputList.length.toString());
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
            // labelPadding: const EdgeInsets.symmetric(horizontal: 20), // S
            labelStyle: context.textTheme.headline6!
                .copyWith(fontWeight: FontWeight.w800),
            unselectedLabelStyle: context.textTheme.subtitle2,

            // indicatorPadding: context.horizontalPaddingNormal,
            enableFeedback: true,
            tabs: List.generate(
              _viewModel.months.length,
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
          children: [
            PieeCharts(),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
            Container(color: context.randomColor),
          ],
        )),
      ],
    );
  }

  TabBarView _gecicitabbarview() {
    return TabBarView(controller: tabController, children: [
      _monthlyListViewBuilder(_viewModel.janList),
      _monthlyListViewBuilder(_viewModel.febList),
      _monthlyListViewBuilder(_viewModel.marchList),
      _monthlyListViewBuilder(_viewModel.febList),
      _monthlyListViewBuilder(_viewModel.mayList),
      _monthlyListViewBuilder(_viewModel.febList),
      _monthlyListViewBuilder(_viewModel.febList),
      _monthlyListViewBuilder(_viewModel.febList),
      _monthlyListViewBuilder(_viewModel.febList),
      _monthlyListViewBuilder(_viewModel.febList),
      _monthlyListViewBuilder(_viewModel.febList),
      _monthlyListViewBuilder(_viewModel.febList),
    ]);
  }

  Observer _monthlyListViewBuilder(
    ObservableList<InputModel> listName,
  ) {
    return Observer(builder: (_) {
      return ListView.builder(
        itemCount: listName.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text(listName[index].category.toString()),
          title: Text(listName[index].title),
          subtitle: Text(listName[index].price.toString()),
          trailing: Text(listName[index].createdTime.toString()),
        ),
      );
    });
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