import 'package:date_format/date_format.dart';
import 'package:mobx/mobx.dart';
import '../../../product/model/input_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  List months = [
    'Ocak',
    'Şubat',
    'Mart',
    'Nisan',
    'Mayıs',
    'Haziran',
    'Temmuz',
    'Ağustos',
    'Eylül',
    'Ekim',
    'Kasım',
    'Aralık'
  ];

  @observable
  ObservableList<InputModel> inputList = ObservableList<InputModel>();

  @action
  void dummyVoid() {
    print('dummyVoid');
  }

  @action
  void addInputList(InputModel inputModel) {
    inputList.add(inputModel);
  }

  @action
  void returnThisMonth() {
    var month = DateTime.now();
    final formatted = formatDate(month, [mm]); // Current month index

    print(months[int.parse(formatted) - 1]); // Current month name
    print(formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy])); // Current date
  }
}
