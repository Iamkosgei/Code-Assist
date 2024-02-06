import 'package:code_assist/core/error/failures.dart';
import 'package:code_assist/features/prompt/domain/usecases/get_prompt_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_prompt_result_state.dart';
part 'get_prompt_result_cubit.freezed.dart';

@injectable
class GetPromptResultCubit extends Cubit<GetPromptResultState> {
  final GetPromptResult getPromptResult;
  GetPromptResultCubit(this.getPromptResult)
      : super(const GetPromptResultState.initial());

  Future<void> fetchPromptResult(String message) async {
    emit(const GetPromptResultState.loading());
    final res = await getPromptResult.call(message);

    emit(res.fold((l) => GetPromptResultState.error(l),
        (r) => GetPromptResultState.loaded(r)));
  }
}
