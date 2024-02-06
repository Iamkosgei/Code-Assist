import 'package:code_assist/core/network/end_points.dart';
import 'package:code_assist/features/prompt/data/models/message_model/messages_model.dart';
import 'package:code_assist/features/prompt/data/models/prompt_response_model/prompt_response_model.dart';

import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'rest_client.g.dart';

@injectable
@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  @factoryMethod
  factory RestClient(Dio dio) = _RestClient;

  @POST(chatUrl)
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<PromptResponseModel> getResults(
    @Body() MessagesModel messagesModel,
  );
}
