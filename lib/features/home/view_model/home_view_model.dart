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

  // @observable
  // ObservableList<InputModel> inputList = ObservableList<InputModel>();
  @observable
  ObservableList<InputModel> januaryList = ObservableList<InputModel>.of([
    InputModel(
        title: "title1",
        category: "Ocak0",
        price: 1,
        createdTime: DateTime.utc(1989, 1, 9)),
    InputModel(
        title: "title2",
        category: "Ocak2",
        price: 21,
        createdTime: DateTime.utc(1989, 1, 11)),
  ]);
  @observable
  ObservableList<InputModel> inputList = ObservableList<InputModel>.of([
    InputModel(
        title: "title1",
        category: "Ocak0",
        price: 1,
        createdTime: DateTime.utc(1989, 1, 9)),
    InputModel(
        title: "title2",
        category: "Şubat ",
        price: 2,
        createdTime: DateTime.utc(1989, 2, 9)),
    InputModel(
        title: "title3",
        category: "mart ",
        price: 3,
        createdTime: DateTime.utc(1989, 3, 9)),
    InputModel(
        title: "title4",
        category: "nisann ",
        price: 1,
        createdTime: DateTime.utc(1989, 4, 9)),
    InputModel(
        title: "title5",
        category: "mayıs  ",
        price: 2,
        createdTime: DateTime.utc(1989, 5, 9)),
    InputModel(
        title: "title5.2",
        category: "mayıs.2  ",
        price: 2,
        createdTime: DateTime.utc(1989, 5, 10)),
    InputModel(
        title: "title6",
        category: "haziran ",
        price: 3,
        createdTime: DateTime.utc(1989, 6, 9)),
    InputModel(
        title: "title7",
        category: "temmuz",
        price: 1,
        createdTime: DateTime.utc(1989, 7, 9)),
    InputModel(
        title: "title8",
        category: "ağust ",
        price: 2,
        createdTime: DateTime.utc(1989, 8, 9)),
    InputModel(
        title: "title9",
        category: "category8",
        price: 3,
        createdTime: DateTime.now()),
    InputModel(
        title: "title10",
        category: "category9",
        price: 1,
        createdTime: DateTime.now()),
    InputModel(
        title: "title11",
        category: "category10",
        price: 2,
        createdTime: DateTime.now()),
    InputModel(
        title: "title12",
        category: "category11",
        price: 3,
        createdTime: DateTime.now())
  ]);

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
