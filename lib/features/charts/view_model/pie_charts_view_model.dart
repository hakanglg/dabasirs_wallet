part of "../view/pie_charts_view.dart";

class _PieChartsViewModel {
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
