import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice_model.dart';

part 'prompt_response_model.freezed.dart';
part 'prompt_response_model.g.dart';

@freezed
class PromptResponseModel with _$PromptResponseModel {
  factory PromptResponseModel({
    List<ChoiceModel>? choices,
  }) = _PromptResponseModel;

  factory PromptResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PromptResponseModelFromJson(json);
}
