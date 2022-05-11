import 'package:dabasirs_wallet/core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/manager/navigation_manager.dart';
import '../../../product/model/deneme_model.dart';
import '../view_model/home_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatelessWidget with BaseState {
  // final model = InputModel();
  // final HomeViewModel _model = HomeViewModel();
  final double _notchedValue = 10;
  @override
  Widget build(BuildContext context) {
    final _model = Provider.of<HomeViewModel>(context);

    return Scaffold(
      floatingActionButton: _AddInputFAB(),
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Observer(
        builder: (_) {
          return Column(
            children: [
              Expanded(
                  child: _model.denemeList.isEmpty
                      ? Text("There is No DATA ${_model.denemeList.length}")
                      : ListView.builder(
                          itemCount: _model.denemeList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: const Icon(Icons.zoom_in_rounded),
                              title: Text(_model.denemeList[index].title),
                            );
                          },
                        )),
            ],
          );
        },
      ),
    );
  }
}

//
// Text(_model.isLoading)

class _AddInputFAB extends StatelessWidget with NavigatorManager {
  final _model = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // onPressed: () => navigateToWidget(context, AddInputView()),
      onPressed: () {
        // final newModel = InputModel(
        //     title: "Title2",
        //     category: "Category2",
        //     price: 2,
        //     createdTime: DateTime.now());
        // _model.addDummyList(newModel);
        // print(_model.dummyList.length);
        // print(_model.dummyList[0].title);

        final denemeModelNew = DenemeModel(title: "deneme Title");
        _model.addDenemeList(denemeModelNew);
        print(_model.denemeList.length);
        print(_model.denemeList[0].title);
      },
      child: const Icon(Icons.add),
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
