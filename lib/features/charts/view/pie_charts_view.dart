import 'package:dabasirs_wallet/product/components/list_tile/income_list_tile.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/base_state.dart';
import '../../../../core/constants/color/color_constants.dart';
import '../../../../features/home/view_model/home_view_model.dart';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/constants/enums/category_enum.dart';
import '../../../product/components/list_tile/expenses_list_tile.dart';
import '../../../product/components/list_tile/saving_list_tile.dart';
import '../../transactions/view/tranactions_view.dart';

part "../view_model/pie_charts_view_model.dart";

class PieChartsView extends StatelessWidget with BaseState {
  final double monthIncomeTotal, monthExpensesTotal, monthSavingTotal;
  final ObservableList mounth;

  PieChartsView({
    Key? key,
    required this.monthIncomeTotal,
    required this.monthExpensesTotal,
    required this.monthSavingTotal,
    required this.mounth,
  }) : super(key: key);

  final _PieChartsViewModel _viewModel = _PieChartsViewModel();
  final double animationDuration = 1000;
  final HomeViewModel viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    List<ChartData> chartData = [
      ChartData(
          Category.Income.name,
          monthIncomeTotal == 0 ? 10 : monthIncomeTotal,
          ColorConstants.instance.caribbienGreen),
      ChartData(
          Category.Expenses.name,
          monthExpensesTotal == 0 ? 8 : monthExpensesTotal,
          ColorConstants.instance.metroidRed),
      ChartData(
          Category.Savings.name,
          monthSavingTotal == 0 ? 2 : monthSavingTotal,
          ColorConstants.instance.shadyNeonBlue),
    ];

    return Column(
      children: [
        _PieChart(context, chartData),
        InkWell(
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => TransactionsView(
          //                 context: context,
          //                 mounthIndex: mounth,
          //               )));
          // },
          child: IncomePercentListTile(
              percents: _viewModel
                  .findPercent(
                    monthIncomeTotal,
                    monthExpensesTotal,
                    monthSavingTotal,
                    monthIncomeTotal,
                  )
                  .toInt()),
        ),
        ExpensesPercentListTile(
            percents: _viewModel
                .findPercent(
                  monthExpensesTotal,
                  monthExpensesTotal,
                  monthSavingTotal,
                  monthIncomeTotal,
                )
                .toInt()),
        SavingsPercentListTile(
            percents: _viewModel
                .findPercent(monthSavingTotal, monthExpensesTotal,
                    monthSavingTotal, monthIncomeTotal)
                .toInt()),
        context.emptySizedHeightBoxLow,
        TextButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstants.instance.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TransactionsView(context: context, mounth: mounth)));
            },
            child: Text(
              "Go to Transactions",
              style: TextStyle(
                color: colorConstants.white,
              ),
            )),
      ],
    );
  }

  SfCircularChart _PieChart(BuildContext context, List<ChartData> chartData) {
    return SfCircularChart(
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <DoughnutSeries>[
          // Render pie chart
          DoughnutSeries<ChartData, String>(
              enableTooltip: true,
              animationDuration: animationDuration,
              dataLabelMapper: (datum, index) => datum.x,
              explode: true,
              legendIconType: LegendIconType.diamond,
              dataLabelSettings: DataLabelSettings(
                showZeroValue: true,
                isVisible: false,
                labelPosition: ChartDataLabelPosition.inside,
                textStyle: _pieChartTextStyle(context),
              ),
              dataSource: chartData,
              pointColorMapper: (ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y)
        ]);
  }

  TextStyle _pieChartTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: context.dynamicHeight(.01),
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color? color;
}
