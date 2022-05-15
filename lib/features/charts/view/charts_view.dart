import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/base/base_state.dart';

class ChartsView extends StatefulWidget {
  const ChartsView({Key? key}) : super(key: key);

  @override
  State<ChartsView> createState() => _ChartsViewState();
}

class _ChartsViewState extends State<ChartsView>
    with TickerProviderStateMixin, BaseState {
  late TabController tabController;
  late final now;
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  void initState() {
    tabController =
        TabController(length: _viewModel.months.length, vsync: this);

    super.initState();
    now = DateTime.now();
    final currentMon = now.month - 1;
    print(currentMon);
    tabController.index = currentMon;
    print(_viewModel.inputList[6].createdTime.month);
    // print(_viewModel.inputList.length.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SELECT MONTH
        SizedBox(
          width: context.dynamicWidth(.8),
          child: TabBar(
            controller: tabController,
            isScrollable: true,
            // labelPadding: const EdgeInsets.symmetric(horizontal: 20), // S
            labelStyle: context.textTheme.headline6!
                .copyWith(fontWeight: FontWeight.w800),
            unselectedLabelStyle: context.textTheme.subtitle2,

            // indicatorPadding: context.horizontalPaddingNormal,
            enableFeedback: true,
            tabs: _viewModel.months.map((month) {
              return SizedBox(
                width: context.dynamicWidth(.21),
                child: Tab(
                  text: month,
                ),
              );
            }).toList(),

            // List.generate(
            //   _viewModel.months.length,
            //   (i) => Padding(
            //     padding: context.horizontalPaddingNormal,
            //     child: Tab(
            //       text: _viewModel.months[i].toString(),
            //     ),
            //   ),
            // ),
          ),
        ),

        // VIEW SECTION
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: List.generate(
                _viewModel.months.length,
                (i) => i + 1 == _viewModel.inputList[i].createdTime.month
                    ? ListView.builder(
                        itemCount: _viewModel.januaryList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Text(_viewModel
                                .inputList[i].createdTime.month
                                .toString()),
                            title: Text(
                              _viewModel.inputList[index].title,
                              style: context.textTheme.headline6!,
                            ),
                            subtitle: Text(
                              _viewModel.inputList[index].category,
                              style: context.textTheme.subtitle2!,
                            ),
                            trailing: Text(
                              _viewModel.inputList[index].price.toString(),
                              style: context.textTheme.headline6!,
                            ),
                          );
                        })
                    : const Text("Data Girilmedi")),

            // List.generate(
            //   _viewModel.months.length,
            //   (index) => Text("${index + 1}"),
            // ),
          ),
        ),
      ],
    );
  }
}
// Column(
//                       children: [
//                         Expanded(
//                           child: Observer(builder: (_) {
//                             return ListView.builder(
//                               itemCount: _viewModel.inputList.length,
//                               itemBuilder: (context, index) => Text(
//                                 _viewModel.inputList[index].title,
//                                 style: const TextStyle(color: Colors.white),
//                               ),
//                             );
//                           }),
//                         )
//                       ],
//                     )