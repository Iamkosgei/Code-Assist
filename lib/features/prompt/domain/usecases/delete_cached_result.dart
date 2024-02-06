import 'package:code_assist/core/error/failures.dart';
import 'package:code_assist/core/usecases/usecase.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/domain/repositories/i_prompt_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteCachedResults implements UseCase<void, Result> {
  final IPromptRepository promptRepository;

  const DeleteCachedResults(this.promptRepository);

  @override
  Future<Either<Failure, void>> call(Result params) {
    return promptRepository.deleteCachedResult(params);
  }
}
