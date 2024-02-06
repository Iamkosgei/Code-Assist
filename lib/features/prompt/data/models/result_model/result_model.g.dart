// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultModelImpl _$$ResultModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultModelImpl(
      steps:
          (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList(),
      code: json['code'] as String?,
      hint: json['hint'] as String?,
      question: json['question'] as String?,
    );

Map<String, dynamic> _$$ResultModelImplToJson(_$ResultModelImpl instance) =>
    <String, dynamic>{
      'steps': instance.steps,
      'code': instance.code,
      'hint': instance.hint,
      'question': instance.question,
    };
