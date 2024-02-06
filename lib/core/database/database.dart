import 'dart:async';

import 'package:code_assist/features/prompt/data/data_sources/list_type_coverter.dart';
import 'package:code_assist/features/prompt/data/data_sources/local_result_model.dart';
import 'package:code_assist/features/prompt/data/data_sources/result_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@TypeConverters([ListConverter])
@Database(version: 1, entities: [LocalResultModel])
abstract class AppDatabase extends FloorDatabase {
  ResultDao get resultDao;
}
