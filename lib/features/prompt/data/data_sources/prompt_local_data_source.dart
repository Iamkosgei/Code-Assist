import 'dart:developer';

import 'package:code_assist/core/database/database.dart';
import 'package:code_assist/core/error/exceptions.dart';
import 'package:code_assist/features/prompt/data/data_sources/local_result_model.dart';
import 'package:injectable/injectable.dart';

abstract class PromptLocalDataSource {
  Future<List<LocalResultModel>> getLocalResults();

  Future<void> cacheModel(LocalResultModel localResultModel);
  Future<void> deleteCachedResult(LocalResultModel localResultModel);
}

@Injectable(as: PromptLocalDataSource)
class PromptRemoteDataSourceImpl implements PromptLocalDataSource {
  @override
  Future<List<LocalResultModel>> getLocalResults() async {
    try {
      final database =
          await $FloorAppDatabase.databaseBuilder('app_database.db').build();

      final resultDao = database.resultDao;

      return resultDao.findAllResults();
    } catch (e) {
      log("Erorr---- $e");
      throw CacheException();
    }
  }

  @override
  Future<void> cacheModel(LocalResultModel localResultModel) async {
    try {
      final database =
          await $FloorAppDatabase.databaseBuilder('app_database.db').build();

      final resultDao = database.resultDao;
      await resultDao.insertResult(localResultModel);
      return;
    } catch (e) {
      log("Erorr---- $e");
      throw CacheException();
    }
  }

  @override
  Future<void> deleteCachedResult(LocalResultModel localResultModel) async {
    try {
      final database =
          await $FloorAppDatabase.databaseBuilder('app_database.db').build();

      final resultDao = database.resultDao;
      await resultDao.deleteResult(localResultModel);
      return;
    } catch (e) {
      log("Erorr---- $e");
      throw CacheException();
    }
  }
}
