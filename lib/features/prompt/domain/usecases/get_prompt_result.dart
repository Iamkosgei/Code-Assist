import 'package:code_assist/core/error/failures.dart';
import 'package:code_assist/core/usecases/usecase.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/domain/repositories/i_prompt_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPromptResult implements UseCase<Result, String> {
  final IPromptRepository promptRepository;

  const GetPromptResult(this.promptRepository);

  @override
  Future<Either<Failure, Result>> call(String params) {
    return promptRepository.getResults(params);
  }
}
