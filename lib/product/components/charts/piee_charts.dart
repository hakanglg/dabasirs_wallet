import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:dabasirs_wallet/core/constants/color/color_constants.dart';
import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';
import 'package:dabasirs_wallet/product/enums/category_enum.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieeCharts extends StatelessWidget with BaseState {
  final HomeViewModel viewModel = HomeViewModel();

  // PieeCharts({Key? key, required this.viewModel}) : super(key: key);
  void selectJanList() {
    var janTotalList = 0;
    viewModel.janList.forEach((element) {
      janTotalList += element.amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<ChartData> chartData = [
      ChartData(CategoryEnum.Income.name, viewModel.totalIncomes,
          ColorConstants.instance.caribbienGreen),
      ChartData(CategoryEnum.Expenses.name, viewModel.totalExpenses,
          ColorConstants.instance.metroidRed),
      ChartData(CategoryEnum.Savings.name, viewModel.totalSaving,
          ColorConstants.instance.shadyNeonBlue),
      ChartData(CategoryEnum.Stuffs.name, viewModel.totalStuffs,
          ColorConstants.instance.blueAngelsYellow),
    ];

    return Center(
        child: Container(
            child: SfCircularChart(series: <DoughnutSeries>[
      // Render pie chart
      DoughnutSeries<ChartData, String>(
          dataLabelMapper: (datum, index) => datum.x,
          explode: true,
          legendIconType: LegendIconType.diamond,
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
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
