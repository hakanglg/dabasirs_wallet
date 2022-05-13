import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../product/model/input_model.dart';
import '../view_model/home_view_model.dart';

class HomeView extends StatelessWidget with BaseState {
  final HomeViewModel _model = HomeViewModel();
  // final double _notchedValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: _AddFAB(model: _model),
        appBar: AppBar(
          title: const Text("data"),
        ),
        body: Center(
          child: Observer(builder: (_) {
            return ListView.builder(
              itemCount: _model.inputList.length,
              itemBuilder: (context, index) =>
                  Text(_model.inputList[index].createdTime.toString()),
            );
          }),
        ));
  }
}

class _AddFAB extends StatelessWidget {
  const _AddFAB({
    Key? key,
    required HomeViewModel model,
  })  : _model = model,
        super(key: key);

  final HomeViewModel _model;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        final newModel = InputModel(
            title: "Title2",
            category: "Category2",
            price: 2,
            createdTime: DateTime.now());

        _model.addInputList(newModel);
      },
    );
  }
}


//   DefaultTabController _defaultTabController() {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//           extendBody: true,
//           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//           floatingActionButton: FloatingActionButton(
//             backgroundColor: colorConstants.white,
//             onPressed: () {},
//             child: Icon(
//               Icons.add,
//               color: colorConstants.black,
//             ),
//           ),
//           appBar: AppBar(
//               // title: AppBarRichTextTitle(),
//               ),
//           bottomNavigationBar: BottomAppBar(
//               notchMargin: _notchedValue,
//               child: const TabBar(tabs: [
//                 Tab(icon: Icon(Icons.home)),
//                 Tab(icon: Icon(Icons.person)),
//               ])),
//           body: TabBarView(physics: const NeverScrollableScrollPhysics(), children: [
//             Container(
//               color: colorConstants.metroidRed,
//             ),
//             const ProfileView()
//           ])),
//     );
//   }
// }
