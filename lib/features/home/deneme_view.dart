import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DenemeView extends StatefulWidget {
  const DenemeView({Key? key}) : super(key: key);

  @override
  State<DenemeView> createState() => _DenemeViewState();
}

class _DenemeViewState extends State<DenemeView> {
  void returnThisMonth() {
    var month = DateTime.now();
    final formatted = formatDate(month, [mm]); // Current month index

    print(months[int.parse(formatted) - 1]); // Current month name
    print(formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy])); // Current date
  }

  // String getMonth(int currentMonthIndex) {
  //   return DateFormat('MMM').format(DateTime(0, currentMonthIndex)).toString();
  // }

  List months = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jul',
    'aug',
    'sep',
    'oct',
    'nov',
    'dec'
  ];
  // late final currentMon;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // var now = DateTime.now();
    // var currentMon = now.month;
    returnThisMonth();
    // print("d");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("months[currentMon - 1]")),
    );
  }
}
