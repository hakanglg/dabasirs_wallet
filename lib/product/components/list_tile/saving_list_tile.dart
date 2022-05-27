import 'package:flutter/material.dart';

import '../../../core/base/base_state.dart';
import '../../../core/components/list_tile/percent_list_tile.dart';
import '../../../core/constants/enums/category_enum.dart';

class SavingsPercentListTile extends StatelessWidget with BaseState {
  int percents;

  SavingsPercentListTile({Key? key, required this.percents}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTilePercents(
      color: colorConstants.shadyNeonBlue,
      title: Category.Savings.name,
      percents: percents,
    );
  }
}
