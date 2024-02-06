import 'package:floor/floor.dart';

class ListConverter extends TypeConverter<List<String>?, String> {
  @override
  List<String> decode(String databaseValue) {
    return databaseValue.split("--");
  }

  @override
  String encode(List<String>? value) {
    return value?.join("--") ?? "";
  }
}
