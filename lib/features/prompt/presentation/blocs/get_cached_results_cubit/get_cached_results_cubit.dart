import 'package:code_assist/core/usecases/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_assist/core/error/failures.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/domain/usecases/get_cached_results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_cached_results_state.dart';
part 'get_cached_results_cubit.freezed.dart';

@injectable
class GetCachedResultsCubit extends Cubit<GetCachedResultsState> {
  final GetCachedResults _getCachedResults;
  GetCachedResultsCubit(this._getCachedResults)
      : super(const GetCachedResultsState.initial());

  Future fetchCachedResults() async {
    emit(const GetCachedResultsState.loading());
    final res = await _getCachedResults.call(NoParams());

    emit(res.fold(
      (l) => GetCachedResultsState.error(l),
      (r) => GetCachedResultsState.loaded(
        r,
        showNewChallenge: r.isEmpty,
      ),
    ));
  }

  void toggleShowNewChallengeView() {
    if (state is GetCachedResultsLoadedState) {
      final currentState = state as GetCachedResultsLoadedState;

      emit(currentState.copyWith(
          showNewChallenge: !(currentState.showNewChallenge ?? true)));
    }
  }
}
