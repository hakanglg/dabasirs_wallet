import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../product/components/bottom_sheet/select_category_bottom_sheet.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  
  // JANUARY


  @action
  void showSelectCategoryBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => SelectCategoryBottomSheet());
  }

  // @action
  // void returnThisMonth() {
  //   var month = DateTime.now();
  //   final formatted = formatDate(month, [mm]); // Current month index

  //   print(months[double.parse(formatted) - 1]); // Current month name
  //   print(formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy])); // Current date
  // }
}
