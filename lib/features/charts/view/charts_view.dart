import 'package:dabasirs_wallet/features/charts/view_model/charts_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/base/base_state.dart';
import '../../../product/components/charts/pie_charts.dart';

class ChartsView extends StatefulWidget {
  const ChartsView({Key? key}) : super(key: key);

  @override
  State<ChartsView> createState() => _ChartsViewState();
}

class _ChartsViewState extends State<ChartsView>
    with TickerProviderStateMixin, BaseState {
  late TabController tabController;
  late final now;
  final ChartsViewModel _viewModel = ChartsViewModel();

  final List _months = [
    "Ocak",
    'Şubat',
    'Mart',
    'Nisan',
    'Mayıs',
    'Haziran',
    'Temmuz',
    'Ağustos',
    'Eylül',
    'Ekim',
    'Kasım',
    'Aralık'
  ];

  @override
  void initState() {
    tabController = TabController(length: _months.length, vsync: this);

    super.initState();
    now = DateTime.now();
    final currentMon = now.month - 1;
    // print(currentMon);
    tabController.index = currentMon;
    print(tabController.index);

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
              _months.length,
              (i) => Padding(
                padding: context.horizontalPaddingNormal,
                child: Tab(
                  text: _months[i].toString(),
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
            PieCharts(
                monthExpensesTotal: _viewModel.januaryExpensesTotal,
                monthIncomeTotal: _viewModel.januaryIncomeTotal,
                monthSavingTotal: _viewModel.januarySavingsTotal,
                monthStuffTotal: _viewModel.januaryStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.februaryExpensesTotal,
                monthIncomeTotal: _viewModel.februaryIncomeTotal,
                monthSavingTotal: _viewModel.februarySavingsTotal,
                monthStuffTotal: _viewModel.februaryStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.marchExpensesTotal,
                monthIncomeTotal: _viewModel.marchIncomeTotal,
                monthSavingTotal: _viewModel.marchSavingsTotal,
                monthStuffTotal: _viewModel.marchStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.aprilExpensesTotal,
                monthIncomeTotal: _viewModel.aprilIncomeTotal,
                monthSavingTotal: _viewModel.aprilSavingsTotal,
                monthStuffTotal: _viewModel.aprilStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.mayExpensesTotal,
                monthIncomeTotal: _viewModel.mayIncomeTotal,
                monthSavingTotal: _viewModel.maySavingsTotal,
                monthStuffTotal: _viewModel.mayStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.juneExpensesTotal,
                monthIncomeTotal: _viewModel.juneIncomeTotal,
                monthSavingTotal: _viewModel.juneSavingsTotal,
                monthStuffTotal: _viewModel.juneStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.julyExpensesTotal,
                monthIncomeTotal: _viewModel.julyIncomeTotal,
                monthSavingTotal: _viewModel.julySavingsTotal,
                monthStuffTotal: _viewModel.julyStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.augustExpensesTotal,
                monthIncomeTotal: _viewModel.augustIncomeTotal,
                monthSavingTotal: _viewModel.augustSavingsTotal,
                monthStuffTotal: _viewModel.augustStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.septemberExpensesTotal,
                monthIncomeTotal: _viewModel.septemberIncomeTotal,
                monthSavingTotal: _viewModel.septemberSavingsTotal,
                monthStuffTotal: _viewModel.septemberStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.octoberExpensesTotal,
                monthIncomeTotal: _viewModel.octoberIncomeTotal,
                monthSavingTotal: _viewModel.octoberSavingsTotal,
                monthStuffTotal: _viewModel.octoberStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.novemberExpensesTotal,
                monthIncomeTotal: _viewModel.novemberIncomeTotal,
                monthSavingTotal: _viewModel.novemberSavingsTotal,
                monthStuffTotal: _viewModel.novemberStuffsTotal),
            PieCharts(
                monthExpensesTotal: _viewModel.decemberExpensesTotal,
                monthIncomeTotal: _viewModel.decemberIncomeTotal,
                monthSavingTotal: _viewModel.decemberSavingsTotal,
                monthStuffTotal: _viewModel.decemberStuffsTotal),
          ],
        )),
      ],
    );
  }
}
