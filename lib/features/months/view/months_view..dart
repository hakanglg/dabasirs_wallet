import 'package:dabasirs_wallet/features/charts/view/pie_charts_view.dart';
import '../view_model/months_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/base/base_state.dart';

class MonthsView extends StatefulWidget {
  const MonthsView({Key? key}) : super(key: key);

  @override
  State<MonthsView> createState() => _MonthsViewState();
}

class _MonthsViewState extends State<MonthsView>
    with TickerProviderStateMixin, BaseState {
  late TabController tabController;
  late final now;
  final MonthsViewModel _viewModel = MonthsViewModel();

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
            PieChartsView(
              monthExpensesTotal: _viewModel.januaryExpensesTotal,
              monthIncomeTotal: _viewModel.januaryIncomeTotal,
              monthSavingTotal: _viewModel.januarySavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.februaryExpensesTotal,
              monthIncomeTotal: _viewModel.februaryIncomeTotal,
              monthSavingTotal: _viewModel.februarySavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.marchExpensesTotal,
              monthIncomeTotal: _viewModel.marchIncomeTotal,
              monthSavingTotal: _viewModel.marchSavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.aprilExpensesTotal,
              monthIncomeTotal: _viewModel.aprilIncomeTotal,
              monthSavingTotal: _viewModel.aprilSavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.mayExpensesTotal,
              monthIncomeTotal: _viewModel.mayIncomeTotal,
              monthSavingTotal: _viewModel.maySavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.juneExpensesTotal,
              monthIncomeTotal: _viewModel.juneIncomeTotal,
              monthSavingTotal: _viewModel.juneSavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.julyExpensesTotal,
              monthIncomeTotal: _viewModel.julyIncomeTotal,
              monthSavingTotal: _viewModel.julySavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.augustExpensesTotal,
              monthIncomeTotal: _viewModel.augustIncomeTotal,
              monthSavingTotal: _viewModel.augustSavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.septemberExpensesTotal,
              monthIncomeTotal: _viewModel.septemberIncomeTotal,
              monthSavingTotal: _viewModel.septemberSavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.octoberExpensesTotal,
              monthIncomeTotal: _viewModel.octoberIncomeTotal,
              monthSavingTotal: _viewModel.octoberSavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.novemberExpensesTotal,
              monthIncomeTotal: _viewModel.novemberIncomeTotal,
              monthSavingTotal: _viewModel.novemberSavingsTotal,
            ),
            PieChartsView(
              monthExpensesTotal: _viewModel.decemberExpensesTotal,
              monthIncomeTotal: _viewModel.decemberIncomeTotal,
              monthSavingTotal: _viewModel.decemberSavingsTotal,
            ),
          ],
        )),
      ],
    );
  }
}
