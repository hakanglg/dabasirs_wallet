import 'package:dabasirs_wallet/product/components/bottom_sheet/select_category_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../core/constants/enums/category_enum.dart';

import '../../../product/model/input_model.dart';

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
