import 'package:dabasirs_wallet/product/components/list_tile/income_list_tile.dart';

import '../../../../core/base/base_state.dart';
import '../../../../core/constants/color/color_constants.dart';
import '../../../../features/home/view_model/home_view_model.dart';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/constants/enums/category_enum.dart';

part "../view_model/pie_charts_view_model.dart";

class PieChartsView extends StatelessWidget with BaseState {
  final double monthExpensesTotal,
      monthIncomeTotal,
      monthSavingTotal,
      monthStuffTotal;

  PieChartsView(
      {Key? key,
      this.monthExpensesTotal = 2,
      this.monthIncomeTotal = 7,
      this.monthSavingTotal = 2,
      this.monthStuffTotal = 1})
      : super(key: key);

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
      ChartData(Category.Stuffs.name, monthStuffTotal,
          ColorConstants.instance.blueAngelsYellow),
    ];

    return Column(
      children: [
        _PieChart(context, chartData),
        IncomePercentListTile(
            percents: _viewModel
                .findPercent(monthIncomeTotal, monthExpensesTotal,
                    monthSavingTotal, monthIncomeTotal, monthStuffTotal)
                .toInt()),
        // ExpensesPercentListTile(
        //     percents: _viewModel
        //         .findPercent(monthExpensesTotal, monthExpensesTotal,
        //             monthSavingTotal, monthIncomeTotal, monthStuffTotal)
        //         .toInt()),
        // SavingsPercentListTile(
        //     percents: _viewModel
        //         .findPercent(monthSavingTotal, monthExpensesTotal,
        //             monthSavingTotal, monthIncomeTotal, monthStuffTotal)
        //         .toInt()),
        // StuffsPercentListTile(
        //     percents: _viewModel
        //         .findPercent(monthStuffTotal, monthExpensesTotal,
        //             monthSavingTotal, monthIncomeTotal, monthStuffTotal)
        //         .toInt()),
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
      fontSize: context.dynamicHeight(.02),
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
