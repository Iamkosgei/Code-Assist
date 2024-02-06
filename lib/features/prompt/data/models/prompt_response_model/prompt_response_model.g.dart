// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromptResponseModelImpl _$$PromptResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PromptResponseModelImpl(
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => ChoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PromptResponseModelImplToJson(
        _$PromptResponseModelImpl instance) =>
    <String, dynamic>{
      'choices': instance.choices,
    };
