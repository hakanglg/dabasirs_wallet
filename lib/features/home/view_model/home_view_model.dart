import 'package:dabasirs_wallet/product/model/deneme_model.dart';
import 'package:mobx/mobx.dart';
import '../../../product/model/input_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  ObservableList<InputModel> dummyList = ObservableList<InputModel>();

  @action
  void addDummyList(InputModel inputModel) {
    dummyList.add(inputModel);
  }

  // @observable
  // ObservableList<DenemeModel> denemeList = ObservableList<DenemeModel>();
  @observable
  ObservableList<DenemeModel> denemeList =
      ObservableList.of([DenemeModel(title: "title")]);

  @action
  void addDenemeList(DenemeModel denemeModel) {
    denemeList.add(denemeModel);
  }
}
