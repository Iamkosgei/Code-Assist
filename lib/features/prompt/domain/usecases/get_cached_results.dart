import 'package:code_assist/core/error/failures.dart';
import 'package:code_assist/core/usecases/usecase.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/domain/repositories/i_prompt_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCachedResults implements UseCase<List<Result>, NoParams> {
  final IPromptRepository promptRepository;

  const GetCachedResults(this.promptRepository);

  @override
  Future<Either<Failure, List<Result>>> call(NoParams params) {
    return promptRepository.getCachedResults();
  }
}
