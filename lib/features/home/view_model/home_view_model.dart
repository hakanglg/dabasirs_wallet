import 'package:dabasirs_wallet/product/components/bottom_sheet/select_category_bottom_sheet.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../core/constants/enums/category_enum.dart';

import '../../../product/model/input_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
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

  // JANUARY
  @observable
  ObservableList<InputModel> januaryList = ObservableList<InputModel>();
  @observable
  int januaryExpensesTotal = 0;
  @observable
  int januaryIncomeTotal = 0;
  @observable
  int januarySavingsTotal = 0;
  @observable
  int januaryStuffsTotal = 0;

  // FEBRUARY
  @observable
  ObservableList<InputModel> februaryList = ObservableList<InputModel>();
  @observable
  int februaryExpensesTotal = 0;
  @observable
  int februaryIncomeTotal = 0;
  @observable
  int februarySavingsTotal = 0;
  @observable
  int februaryStuffsTotal = 0;

  // MARCH
  @observable
  ObservableList<InputModel> marchList = ObservableList<InputModel>();
  @observable
  int marchExpensesTotal = 0;
  @observable
  int marchIncomeTotal = 0;
  @observable
  int marchSavingsTotal = 0;
  @observable
  int marchStuffsTotal = 0;

  // APRIL
  @observable
  ObservableList<InputModel> aprilList = ObservableList<InputModel>();
  @observable
  int aprilExpensesTotal = 0;
  @observable
  int aprilIncomeTotal = 0;
  @observable
  int aprilSavingsTotal = 0;
  @observable
  int aprilStuffsTotal = 0;

  // MAY
  @observable
  ObservableList<InputModel> mayList = ObservableList<InputModel>();

  @observable
  int mayExpensesTotal = 0;
  @observable
  int mayIncomeTotal = 0;
  @observable
  int maySavingsTotal = 0;
  @observable
  int mayStuffsTotal = 0;

  // JUNE
  @observable
  ObservableList<InputModel> juneList = ObservableList<InputModel>();

  @observable
  int juneExpensesTotal = 0;
  @observable
  int juneIncomeTotal = 0;
  @observable
  int juneSavingsTotal = 0;
  @observable
  int juneStuffsTotal = 0;

  // JULY
  @observable
  ObservableList<InputModel> julyList = ObservableList<InputModel>();
  @observable
  int julyExpensesTotal = 0;
  @observable
  int julyIncomeTotal = 0;
  @observable
  int julySavingsTotal = 0;
  @observable
  int julyStuffsTotal = 0;
  @observable

  // AUGUST
  ObservableList<InputModel> augustList = ObservableList<InputModel>();
  @observable
  int augustExpensesTotal = 0;
  @observable
  int augustIncomeTotal = 0;
  @observable
  int augustSavingsTotal = 0;
  @observable
  int augustStuffsTotal = 0;

  // SEPTEMBER
  @observable
  ObservableList<InputModel> septemberList = ObservableList<InputModel>();
  @observable
  int septemberExpensesTotal = 0;
  @observable
  int septemberIncomeTotal = 0;
  @observable
  int septemberSavingsTotal = 0;
  @observable
  int septemberStuffsTotal = 0;

  // OCTOBER
  @observable
  ObservableList<InputModel> octoberList = ObservableList<InputModel>();
  @observable
  int octoberExpensesTotal = 0;
  @observable
  int octoberIncomeTotal = 0;
  @observable
  int octoberSavingsTotal = 0;
  @observable
  int octoberStuffsTotal = 0;

  // NOVEMBER
  @observable
  ObservableList<InputModel> novemberList = ObservableList<InputModel>();
  @observable
  int novemberExpensesTotal = 0;
  @observable
  int novemberIncomeTotal = 0;
  @observable
  int novemberSavingsTotal = 0;
  @observable
  int novemberStuffsTotal = 0;

  // DECEMBER
  @observable
  ObservableList<InputModel> decemberList = ObservableList<InputModel>();
  @observable
  int decemberExpensesTotal = 0;
  @observable
  int decemberIncomeTotal = 0;
  @observable
  int decemberSavingsTotal = 0;
  @observable
  int decemberStuffsTotal = 0;

  @action
  void addInputList(InputModel inputModel) {
    switch (inputModel.createdTime.month) {
      case DateTime.january:
        januaryList.add(inputModel);
        addToCategoryByMonth(inputModel, januaryIncomeTotal,
            januaryExpensesTotal, januarySavingsTotal, januaryStuffsTotal);
        break;
      case DateTime.february:
        februaryList.add(inputModel);
        addToCategoryByMonth(inputModel, februaryIncomeTotal,
            februaryExpensesTotal, februarySavingsTotal, februaryStuffsTotal);
        break;
      case DateTime.march:
        marchList.add(inputModel);
        addToCategoryByMonth(inputModel, marchIncomeTotal, marchExpensesTotal,
            marchSavingsTotal, marchStuffsTotal);
        break;
      case DateTime.april:
        aprilList.add(inputModel);
        addToCategoryByMonth(inputModel, aprilIncomeTotal, aprilExpensesTotal,
            aprilSavingsTotal, aprilStuffsTotal);
        break;
      case DateTime.may:
        mayList.add(inputModel);
        addToCategoryByMonth(inputModel, mayIncomeTotal, mayExpensesTotal,
            maySavingsTotal, mayStuffsTotal);
        break;
      case DateTime.june:
        juneList.add(inputModel);
        addToCategoryByMonth(inputModel, juneIncomeTotal, juneExpensesTotal,
            juneSavingsTotal, juneStuffsTotal);
        break;
      case DateTime.july:
        julyList.add(inputModel);
        addToCategoryByMonth(inputModel, julyIncomeTotal, julyExpensesTotal,
            julySavingsTotal, julyStuffsTotal);
        break;
      case DateTime.august:
        augustList.add(inputModel);
        addToCategoryByMonth(inputModel, augustIncomeTotal, augustExpensesTotal,
            augustSavingsTotal, augustStuffsTotal);
        break;
      case DateTime.september:
        septemberList.add(inputModel);
        addToCategoryByMonth(
            inputModel,
            septemberIncomeTotal,
            septemberExpensesTotal,
            septemberSavingsTotal,
            septemberStuffsTotal);
        break;
      case DateTime.october:
        octoberList.add(inputModel);
        addToCategoryByMonth(inputModel, octoberIncomeTotal,
            octoberExpensesTotal, octoberSavingsTotal, octoberStuffsTotal);
        break;
      case DateTime.november:
        novemberList.add(inputModel);
        addToCategoryByMonth(inputModel, novemberIncomeTotal,
            novemberExpensesTotal, novemberSavingsTotal, novemberStuffsTotal);
        break;
      case DateTime.december:
        decemberList.add(inputModel);
        addToCategoryByMonth(inputModel, decemberIncomeTotal,
            decemberExpensesTotal, decemberSavingsTotal, decemberStuffsTotal);
        break;

      default:
        print("error");
        break;
    }
  }

  @action
  void addToCategoryByMonth(InputModel inputModel, int income, int expenses,
      int savings, int stuffs) {
    switch (inputModel.category) {
      case Category.Income:
        income += inputModel.price;
        break;
      case Category.Expenses:
        expenses += inputModel.price;
        break;
      case Category.Savings:
        savings += inputModel.price;
        break;
      case Category.Stuffs:
        stuffs += inputModel.price;
        break;
    }
  }

  @action
  void showSelectCategoryBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => SelectCategoryBottomSheet());
  }

  @action
  void returnThisMonth() {
    var month = DateTime.now();
    final formatted = formatDate(month, [mm]); // Current month index

    print(months[int.parse(formatted) - 1]); // Current month name
    print(formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy])); // Current date
  }
}
