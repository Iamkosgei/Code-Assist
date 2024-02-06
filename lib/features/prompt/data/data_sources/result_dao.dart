import 'package:code_assist/features/prompt/data/data_sources/local_result_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class ResultDao {
  @Query('SELECT * FROM LocalResultModel')
  Future<List<LocalResultModel>> findAllResults();

  @insert
  Future<void> insertResult(LocalResultModel resultModel);

  @delete
  Future<void> deleteResult(LocalResultModel resultModel);
}
