import 'package:code_assist/features/prompt/data/models/message_model/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_model.freezed.dart';
part 'choice_model.g.dart';

@freezed
class ChoiceModel with _$ChoiceModel {
  factory ChoiceModel({
    MessageModel? message,
  }) = _ChoiceModel;

  factory ChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceModelFromJson(json);
}
