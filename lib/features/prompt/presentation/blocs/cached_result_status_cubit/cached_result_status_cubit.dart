import 'package:code_assist/core/usecases/usecase.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/domain/usecases/cache_result.dart';
import 'package:code_assist/features/prompt/domain/usecases/delete_cached_result.dart';
import 'package:code_assist/features/prompt/domain/usecases/get_cached_results.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:collection/collection.dart';

part 'cached_result_status_state.dart';
part 'cached_result_status_cubit.freezed.dart';

@injectable
class CachedResultStatusCubit extends Cubit<CachedResultStatusState> {
  final GetCachedResults _getCachedResults;
  final DeleteCachedResults _deleteCachedResults;
  final CacheResult _cacheResult;
  CachedResultStatusCubit(
    this._getCachedResults,
    this._deleteCachedResults,
    this._cacheResult,
  ) : super(const CachedResultStatusState.initial());

  Future<void> checkSavedStatus(Result result) async {
    if (result.id == null) {
      emit(const CachedResultStatusState.loaded(false, false));
    }
    final res = await _getCachedResults.call(NoParams());

    emit(
      CachedResultStatusState.loaded(
        res.fold((l) => false, (r) {
          return r.firstWhereOrNull((element) => element.id == result.id) !=
              null;
        }),
        false,
      ),
    );
  }

  Future<void> deleteCachedResult(Result result) async {
    emit(const CachedResultStatusState.loading());
    final res = await _deleteCachedResults.call(result);

    emit(
      res.fold(
        (l) => const CachedResultStatusState.error(),
        (r) => const CachedResultStatusState.loaded(false, true),
      ),
    );
  }

  Future<void> saveResult(Result result) async {
    emit(const CachedResultStatusState.loading());
    final res = await _cacheResult.call(result);

    emit(
      res.fold(
        (l) => const CachedResultStatusState.error(),
        (r) => const CachedResultStatusState.loaded(
          true,
          true,
        ),
      ),
    );
  }
}
