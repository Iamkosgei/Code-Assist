part of 'get_cached_results_cubit.dart';

@freezed
class GetCachedResultsState with _$GetCachedResultsState {
  const factory GetCachedResultsState.initial() = _Initial;
  const factory GetCachedResultsState.loading() = GetCachedResultsLoadingState;
  const factory GetCachedResultsState.error(Failure f) =
      GetCachedResultsErrorState;
  const factory GetCachedResultsState.loaded(List<Result> results,
      {bool? showNewChallenge}) = GetCachedResultsLoadedState;
}
