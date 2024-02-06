part of 'cached_result_status_cubit.dart';

@freezed
class CachedResultStatusState with _$CachedResultStatusState {
  const factory CachedResultStatusState.initial() = _Initial;
  const factory CachedResultStatusState.loading() =
      CachedResultStatusLoadingState;
  const factory CachedResultStatusState.error() = CachedResultStatusErrorState;
  const factory CachedResultStatusState.loaded(
    bool isSaved,
    bool showSnackbar,
  ) = CachedResultStatusLoadedState;
}
