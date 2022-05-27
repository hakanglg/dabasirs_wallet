import 'package:mobx/mobx.dart';

import '../../../core/constants/enums/category_enum.dart';
import '../../../product/model/input_model.dart';

part 'months_view_model.g.dart';

class MonthsViewModel = _MonthsViewModelBase with _$MonthsViewModel;

abstract class _MonthsViewModelBase with Store {
  @observable
  ObservableList<InputModel> januaryList = ObservableList<InputModel>();
  @observable
  double januaryExpensesTotal = 0;
  @observable
  double januaryIncomeTotal = 0;
  @observable
  double januarySavingsTotal = 0;
  @observable
  double januaryStuffsTotal = 0;

  // FEBRUARY
  @observable
  ObservableList<InputModel> februaryList = ObservableList<InputModel>();
  @observable
  double februaryExpensesTotal = 0;
  @observable
  double februaryIncomeTotal = 0;
  @observable
  double februarySavingsTotal = 0;
  @observable
  double februaryStuffsTotal = 0;

  // MARCH
  @observable
  ObservableList<InputModel> marchList = ObservableList<InputModel>();
  @observable
  double marchExpensesTotal = 0;
  @observable
  double marchIncomeTotal = 0;
  @observable
  double marchSavingsTotal = 0;
  @observable
  double marchStuffsTotal = 0;

  // APRIL
  @observable
  ObservableList<InputModel> aprilList = ObservableList<InputModel>();
  @observable
  double aprilExpensesTotal = 0;
  @observable
  double aprilIncomeTotal = 0;
  @observable
  double aprilSavingsTotal = 0;
  @observable
  double aprilStuffsTotal = 0;

  // MAY
  @observable
  ObservableList<InputModel> mayList = ObservableList<InputModel>();

  @observable
  double mayExpensesTotal = 2000;
  @observable
  double mayIncomeTotal = 10000;
  @observable
  double maySavingsTotal = 1000;
  @observable
  double mayStuffsTotal = 1000;

  // JUNE
  @observable
  ObservableList<InputModel> juneList = ObservableList<InputModel>();

  @observable
  double juneExpensesTotal = 0;
  @observable
  double juneIncomeTotal = 0;
  @observable
  double juneSavingsTotal = 0;
  @observable
  double juneStuffsTotal = 0;

  // JULY
  @observable
  ObservableList<InputModel> julyList = ObservableList<InputModel>();
  @observable
  double julyExpensesTotal = 0;
  @observable
  double julyIncomeTotal = 0;
  @observable
  double julySavingsTotal = 0;
  @observable
  double julyStuffsTotal = 0;
  @observable

  // AUGUST
  ObservableList<InputModel> augustList = ObservableList<InputModel>();
  @observable
  double augustExpensesTotal = 1000;
  @observable
  double augustIncomeTotal = 7000;
  @observable
  double augustSavingsTotal = 2000;
  @observable
  double augustStuffsTotal = 1000;

  // SEPTEMBER
  @observable
  ObservableList<InputModel> septemberList = ObservableList<InputModel>();
  @observable
  double septemberExpensesTotal = 2000;
  @observable
  double septemberIncomeTotal = 10000;
  @observable
  double septemberSavingsTotal = 2000;
  @observable
  double septemberStuffsTotal = 1000;

  // OCTOBER
  @observable
  ObservableList<InputModel> octoberList = ObservableList<InputModel>();
  @observable
  double octoberExpensesTotal = 0;
  @observable
  double octoberIncomeTotal = 0;
  @observable
  double octoberSavingsTotal = 0;
  @observable
  double octoberStuffsTotal = 0;

  // NOVEMBER
  @observable
  ObservableList<InputModel> novemberList = ObservableList<InputModel>();
  @observable
  double novemberExpensesTotal = 0;
  @observable
  double novemberIncomeTotal = 0;
  @observable
  double novemberSavingsTotal = 0;
  @observable
  double novemberStuffsTotal = 0;

  // DECEMBER
  @observable
  ObservableList<InputModel> decemberList = ObservableList<InputModel>();
  @observable
  double decemberExpensesTotal = 0;
  @observable
  double decemberIncomeTotal = 0;
  @observable
  double decemberSavingsTotal = 0;
  @observable
  double decemberStuffsTotal = 0;

  @action
  void addInputList(InputModel inputModel) {
    switch (inputModel.createdTime.month) {
      case DateTime.january:
        addToList(januaryList, inputModel);
        addToCategoryByMonth(inputModel, januaryIncomeTotal,
            januaryExpensesTotal, januarySavingsTotal, januaryStuffsTotal);
        break;
      case DateTime.february:
        addToList(februaryList, inputModel);
        addToCategoryByMonth(inputModel, februaryIncomeTotal,
            februaryExpensesTotal, februarySavingsTotal, februaryStuffsTotal);
        break;
      case DateTime.march:
        addToList(marchList, inputModel);
        addToCategoryByMonth(inputModel, marchIncomeTotal, marchExpensesTotal,
            marchSavingsTotal, marchStuffsTotal);
        break;
      case DateTime.april:
        addToList(aprilList, inputModel);
        addToCategoryByMonth(inputModel, aprilIncomeTotal, aprilExpensesTotal,
            aprilSavingsTotal, aprilStuffsTotal);
        break;
      case DateTime.may:
        addToList(mayList, inputModel);
        addToCategoryByMonth(inputModel, mayIncomeTotal, mayExpensesTotal,
            maySavingsTotal, mayStuffsTotal);
        break;
      case DateTime.june:
        addToList(juneList, inputModel);
        addToCategoryByMonth(inputModel, juneIncomeTotal, juneExpensesTotal,
            juneSavingsTotal, juneStuffsTotal);
        break;
      case DateTime.july:
        addToList(julyList, inputModel);
        addToCategoryByMonth(inputModel, julyIncomeTotal, julyExpensesTotal,
            julySavingsTotal, julyStuffsTotal);
        break;
      case DateTime.august:
        addToList(augustList, inputModel);
        addToCategoryByMonth(inputModel, augustIncomeTotal, augustExpensesTotal,
            augustSavingsTotal, augustStuffsTotal);
        break;
      case DateTime.september:
        addToList(septemberList, inputModel);
        addToCategoryByMonth(
            inputModel,
            septemberIncomeTotal,
            septemberExpensesTotal,
            septemberSavingsTotal,
            septemberStuffsTotal);
        break;
      case DateTime.october:
        addToList(octoberList, inputModel);
        addToCategoryByMonth(inputModel, octoberIncomeTotal,
            octoberExpensesTotal, octoberSavingsTotal, octoberStuffsTotal);
        break;
      case DateTime.november:
        addToList(novemberList, inputModel);
        addToCategoryByMonth(inputModel, novemberIncomeTotal,
            novemberExpensesTotal, novemberSavingsTotal, novemberStuffsTotal);
        break;
      case DateTime.december:
        addToList(decemberList, inputModel);
        addToCategoryByMonth(inputModel, decemberIncomeTotal,
            decemberExpensesTotal, decemberSavingsTotal, decemberStuffsTotal);
        break;

      default:
        print("error");
        break;
    }
  }

  @action
  void addToList(ObservableList<InputModel> list, InputModel inputModel) {
    list.add(inputModel);
  }

  @action
  void addToCategoryByMonth(InputModel inputModel, double income,
      double expenses, double savings, double stuffs) {
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
}
