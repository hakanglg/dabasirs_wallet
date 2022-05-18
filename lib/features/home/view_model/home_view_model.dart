import 'package:dabasirs_wallet/product/components/bottom_sheet/select_category_bottom_sheet.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../product/enums/category_enum.dart';
import '../../../product/model/input_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  String currencyUnit = "USD";

  @observable
  double totalIncomes = 0;

  List months = [
    "Ocak",
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
  ObservableList<InputModel> janList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> febList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> marchList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> aprilList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> mayList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> juneList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> julyList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> augList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> sepList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> octList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> novList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> decList = ObservableList<InputModel>();

  @observable
  ObservableList<InputModel> inputList = ObservableList<InputModel>();

  @action
  void showSelectCategoryBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => SelectCategoryBottomSheet());
  }

  @action
  void addInputList(InputModel inputModel) {
    if (inputModel.createdTime.month == 1) {
      janList.add(inputModel);
    } else if (inputModel.createdTime.month == 2) {
      febList.add(inputModel);
    } else if (inputModel.createdTime.month == 3) {
      marchList.add(inputModel);
    } else if (inputModel.createdTime.month == 4) {
      mayList.add(inputModel);
      print("4e eklendi");
    } else if (inputModel.createdTime.month == 5) {
      if (inputModel.category == CategoryEnum.Income.name) {
        totalIncomes += inputModel.price;
        print(totalIncomes);
      }
      mayList.add(inputModel);
      print("55e eklendi");
    } else {
      inputList.add(inputModel);
      print("bi bokluk var");
    }
  }

  @action
  void returnThisMonth() {
    var month = DateTime.now();
    final formatted = formatDate(month, [mm]); // Current month index

    print(months[int.parse(formatted) - 1]); // Current month name
    print(formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy])); // Current date
  }
}
