import 'package:code_assist/core/error/exceptions.dart';
import 'package:code_assist/core/network/rest_client.dart';
import 'package:code_assist/features/prompt/data/models/message_model/messages_model.dart';
import 'package:code_assist/features/prompt/data/models/prompt_response_model/prompt_response_model.dart';
import 'package:injectable/injectable.dart';

abstract class PromptRemoteDataSource {
  Future<PromptResponseModel> getResults(MessagesModel messagesModel);
}

@Injectable(as: PromptRemoteDataSource)
class PromptRemoteDataSourceImpl implements PromptRemoteDataSource {
  final RestClient restClient;

  PromptRemoteDataSourceImpl(this.restClient);

  @override
  Future<PromptResponseModel> getResults(MessagesModel messagesModel) async {
    try {
      final result = await restClient.getResults(messagesModel);
      return result;
    } catch (e) {
      throw const ServerException(500);
    }
  }
}
