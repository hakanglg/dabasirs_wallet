import '../../../core/base/base_state.dart';
import '../../../core/components/container/custom_square.dart';
import 'package:flutter/material.dart';

class AddSquare extends StatelessWidget with BaseState {
  final Color color;
  final String category;
  final VoidCallback onTap;

  AddSquare(
      {Key? key,
      required this.color,
      required this.category,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomSquare(
        border: null,
        height: null,
        width: null,
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.add),
            Text("Add " + category.toString()),
          ],
        ),
      ),
    );
  }
}
