import 'package:code_assist/features/prompt/data/models/message_model/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_model.freezed.dart';
part 'messages_model.g.dart';

@freezed
class MessagesModel with _$MessagesModel {
  factory MessagesModel({
    String? model,
    List<MessageModel>? messages,
  }) = _MessagesModel;

  factory MessagesModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesModelFromJson(json);
}
