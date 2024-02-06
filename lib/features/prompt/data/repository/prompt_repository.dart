import 'dart:convert';

import 'package:code_assist/core/error/exceptions.dart';
import 'package:code_assist/features/prompt/data/data_sources/local_result_model.dart';
import 'package:code_assist/features/prompt/data/data_sources/prompt_local_data_source.dart';
import 'package:code_assist/features/prompt/data/data_sources/prompt_remote_data_source.dart';
import 'package:code_assist/features/prompt/data/models/message_model/message_model.dart';
import 'package:code_assist/features/prompt/data/models/message_model/messages_model.dart';
import 'package:code_assist/features/prompt/data/models/result_model/result_model.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/core/error/failures.dart';
import 'package:code_assist/features/prompt/domain/repositories/i_prompt_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:collection/collection.dart';

@Injectable(as: IPromptRepository)
class PromptRepository extends IPromptRepository {
  final PromptRemoteDataSource promptRemoteDataSource;
  final PromptLocalDataSource promptLocalDataSource;

  PromptRepository(this.promptRemoteDataSource, this.promptLocalDataSource);
  @override
  Future<Either<Failure, Result>> getResults(String prompt) async {
    try {
      final messagesModel =
          MessagesModel(model: "gpt-3.5-turbo-0613", messages: [
        MessageModel(role: "system", content: "You are a helpful assistant."),
        MessageModel(role: "user", content: prompt),
      ]);
      final result = await promptRemoteDataSource.getResults(messagesModel);

      final message = result.choices?.firstOrNull?.message;

      if (message == null || message.content == null) {
        return left(const InvalidFormatFailure());
      }

      final content = message.content;
      content?.replaceAll("\n", "");
      content?.replaceAll("\\", "");

      if (content == null) {
        return left(const InvalidFormatFailure());
      }

      var encodedContent = json.decode(content);

      return right(ResultModel.fromJson(encodedContent).toDomain());
    } on ServerException catch (e) {
      return left(ServerFailure(e.code));
    } catch (e) {
      return left(const ServerFailure(400));
    }
  }

  @override
  Future<Either<Failure, void>> cacheResult(Result result) async {
    try {
      await promptLocalDataSource.cacheModel(
        LocalResultModel(
          steps: result.steps,
          code: result.code,
          hint: result.hint,
          question: result.question,
        ),
      );
      return right(null);
    } on CacheException catch (_) {
      return left(const CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<Result>>> getCachedResults() async {
    try {
      final res = await promptLocalDataSource.getLocalResults();
      final resList = res
          .map((e) => Result(
                code: e.code,
                question: e.question,
                steps: e.steps,
                hint: e.hint,
                id: e.id,
              ))
          .toList();
      return right(resList);
    } on CacheException catch (_) {
      return left(const CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteCachedResult(Result result) async {
    try {
      await promptLocalDataSource.deleteCachedResult(
        LocalResultModel(
          id: result.id,
          steps: result.steps,
          code: result.code,
          hint: result.hint,
          question: result.question,
        ),
      );

      return right(null);
    } on CacheException catch (_) {
      return left(const CacheFailure());
    }
  }
}
