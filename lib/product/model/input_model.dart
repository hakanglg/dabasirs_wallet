// part "task_model.g.dart";

// @HiveType(typeId: HiveConstants.TaskBox)
// class Task extends HiveObject {
//   @HiveField(0)
//   String title;
//   @HiveField(1)
//   bool isDone;
//   @HiveField(2)
//   final String uuid;

//   Task({required this.title, this.isDone = false, required this.uuid});
// }

class InputModel {
  final String _title;
  final String _category;
  final int _price;
  final DateTime _createdTime;

  InputModel({
    required title,
    required category,
    required price,
    required createdTime,
  })  : _title = title,
        _category = category,
        _price = price,
        _createdTime = createdTime;

  String get title => _title;
  String get category => _category;
  int get price => _price;
  DateTime get createdTime => _createdTime;

  // factory InputModel.create(
  //     {required String title, required String category, required int price, required DateTime createdTime}) {
  //   return InputModel(title: title, category: category, price: price, createdTime: createdTime);
  // }

}
