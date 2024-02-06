import 'package:code_assist/core/error/failures.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:dartz/dartz.dart';

abstract class IPromptRepository {
  Future<Either<Failure, Result>> getResults(String prompt);
  Future<Either<Failure, List<Result>>> getCachedResults();
  Future<Either<Failure, void>> cacheResult(Result result);
  Future<Either<Failure, void>> deleteCachedResult(Result result);
}
