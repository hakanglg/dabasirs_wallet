import 'package:dabasirs_wallet/product/components/list_tile/income_list_tile.dart';

import '../../../../core/base/base_state.dart';
import '../../../../core/constants/color/color_constants.dart';
import '../../../../features/home/view_model/home_view_model.dart';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/constants/enums/category_enum.dart';
import '../../../product/components/list_tile/expenses_list_tile.dart';
import '../../../product/components/list_tile/saving_list_tile.dart';

part "../view_model/pie_charts_view_model.dart";

class PieChartsView extends StatelessWidget with BaseState {
  final double monthIncomeTotal, monthExpensesTotal, monthSavingTotal;

  PieChartsView({
    Key? key,
    required this.monthIncomeTotal,
    required this.monthExpensesTotal,
    required this.monthSavingTotal,
  }) : super(key: key);

  final _PieChartsViewModel _viewModel = _PieChartsViewModel();
  final double animationDuration = 1000;
  final HomeViewModel viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    List<ChartData> chartData = [
      ChartData(Category.Income.name, monthIncomeTotal,
          ColorConstants.instance.caribbienGreen),
      ChartData(Category.Expenses.name, monthExpensesTotal,
          ColorConstants.instance.metroidRed),
      ChartData(Category.Savings.name, monthSavingTotal,
          ColorConstants.instance.shadyNeonBlue),
    ];

    return Column(
      children: [
        _PieChart(context, chartData),
        IncomePercentListTile(
            percents: _viewModel
                .findPercent(
                  monthIncomeTotal,
                  monthExpensesTotal,
                  monthSavingTotal,
                  monthIncomeTotal,
                )
                .toInt()),
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
