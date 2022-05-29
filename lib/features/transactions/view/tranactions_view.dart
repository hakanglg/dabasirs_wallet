import 'package:dabasirs_wallet/product/components/rich_text/appbar_title_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../../months/view_model/months_view_model.dart';

class TransactionsView extends StatefulWidget {
  final BuildContext context;
  final ObservableList mounth;
  final MonthsViewModel viewModel = MonthsViewModel();

  TransactionsView({Key? key, required this.context, required this.mounth})
      : super(key: key);

  @override
  State<TransactionsView> createState() => _TransactionsViewState();
}

class _TransactionsViewState extends State<TransactionsView> {
  @override
  void initState() {
    // TODO: implement initState

    print(widget.mounth);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppBarTitleRichText()),
      body: Column(
        children: [
          const Text("Transactions"),
          Expanded(child: Observer(
            builder: (_) {
              return ListView.builder(
                  itemCount: widget.mounth.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(widget.mounth[index].title),
                        subtitle: Text(
                          (widget.mounth.toString()),
                        ),
                      ));
            },
          ))
        ],
      ),
    );
  }
}
