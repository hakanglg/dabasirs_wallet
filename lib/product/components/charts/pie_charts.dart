import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/core/constants/color/color_constants.dart';
import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../core/constants/enums/category_enum.dart';

class PieCharts extends StatelessWidget with BaseState {
  final double monthExpensesTotal,
      monthIncomeTotal,
      monthSavingTotal,
      monthStuffTotal;

  PieCharts(
      {Key? key,
      required this.monthExpensesTotal,
      required this.monthIncomeTotal,
      required this.monthSavingTotal,
      required this.monthStuffTotal})
      : super(key: key);

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

    return Center(
        child: Container(
            child: SfCircularChart(series: <DoughnutSeries>[
      // Render pie chart
      DoughnutSeries<ChartData, String>(
          animationDuration: animationDuration,
          dataLabelMapper: (datum, index) => datum.x,
          explode: true,
          legendIconType: LegendIconType.diamond,
          dataLabelSettings: DataLabelSettings(
            
            isVisible: false,
            labelPosition: ChartDataLabelPosition.inside,
            textStyle: TextStyle(
              fontSize: context.dynamicHeight(.02),
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          dataSource: chartData,
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y)
    ])));
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
