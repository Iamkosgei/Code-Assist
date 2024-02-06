import 'package:floor/floor.dart';

@entity
class LocalResultModel {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final List<String>? steps;
  final String? code;
  final String? hint;
  final String? question;

  LocalResultModel({
    this.id,
    this.steps,
    this.code,
    this.hint,
    this.question,
  });
}
