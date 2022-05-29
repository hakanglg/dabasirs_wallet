import 'package:mobx/mobx.dart';

part 'pie_charts_view_model.g.dart';

class PieChartsViewModel = _PieChartsViewModelBase with _$PieChartsViewModel;

abstract class _PieChartsViewModelBase with Store {
  @action
  double findPercent(
    double CategoryName,
    double CategoryOne,
    double CategoryTwo,
    double CategoryThree,
  ) {
    var total = CategoryOne + CategoryTwo + CategoryThree;
    var percent = (CategoryName / total) * 100;

    if (percent.isNaN || percent.isInfinite) {
      return 0;
    } else {
      return percent;
    }
  }
}
