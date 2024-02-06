// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceModelImpl _$$ChoiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ChoiceModelImpl(
      message: json['message'] == null
          ? null
          : MessageModel.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChoiceModelImplToJson(_$ChoiceModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
