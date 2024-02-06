import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
class ResultModel with _$ResultModel {
  factory ResultModel({
    List<String>? steps,
    String? code,
    String? hint,
    String? question,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);

  ResultModel._();

  Result toDomain() {
    return Result(
      steps: steps,
      code: code,
      hint: hint,
      question: question,
    );
  }
}
