import 'package:flutter/material.dart';

import '../../../core/constants/enums/category_enum.dart';

class DenmeViewChart extends StatefulWidget {
  const DenmeViewChart({Key? key}) : super(key: key);

  @override
  State<DenmeViewChart> createState() => _DenmeViewChartState();
}

class _DenmeViewChartState extends State<DenmeViewChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            child: ListTile(
              title: Text(Category.Income.name),
              leading: const Text("0"),
            ),
          )),
          Expanded(
              child: Container(
            child: Text(Category.Expenses.name),
          )),
          Expanded(
              child: Container(
            child: Text(Category.Savings.name),
          )),
        ],
      ),
    );
  }
}
