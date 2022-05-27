import 'package:flutter/material.dart';

import '../../../core/base/base_state.dart';
import '../../../core/components/list_tile/percent_list_tile.dart';
import '../../../core/constants/enums/category_enum.dart';

class IncomePercentListTile extends StatelessWidget with BaseState {
  int percents;

  IncomePercentListTile({Key? key, required this.percents}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTilePercents(
      color: colorConstants.caribbienGreen,
      title: Category.Income.name,
      percents: percents,
    );
  }
}
