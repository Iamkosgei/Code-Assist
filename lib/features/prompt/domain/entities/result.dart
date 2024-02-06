import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result with _$Result {
  factory Result({
    int? id,
    String? question,
    List<String>? steps,
    String? code,
    String? hint,
  }) = _Result;
}
