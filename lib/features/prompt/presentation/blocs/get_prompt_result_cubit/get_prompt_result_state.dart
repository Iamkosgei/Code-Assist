part of 'get_prompt_result_cubit.dart';

@freezed
class GetPromptResultState with _$GetPromptResultState {
  const factory GetPromptResultState.initial() = _Initial;
  const factory GetPromptResultState.loading() = GetPromptResultLoadingState;
  const factory GetPromptResultState.error(Failure l) =
      GetPromptResultErrorState;
  const factory GetPromptResultState.loaded(Result result) =
      GetPromptResultLoadedState;
}
