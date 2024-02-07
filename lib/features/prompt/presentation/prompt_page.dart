import 'package:code_assist/core/service_locator/get_it.dart';
import 'package:code_assist/features/prompt/presentation/blocs/get_cached_results_cubit/get_cached_results_cubit.dart';
import 'package:code_assist/features/prompt/presentation/blocs/get_prompt_result_cubit/get_prompt_result_cubit.dart';
import 'package:code_assist/features/prompt/presentation/widgets/cached_results.dart';
import 'package:code_assist/features/prompt/presentation/widgets/prompt_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromptPage extends StatelessWidget {
  const PromptPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<GetPromptResultCubit>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt.get<GetCachedResultsCubit>()..fetchCachedResults(),
        ),
      ],
      child: BlocBuilder<GetCachedResultsCubit, GetCachedResultsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loaded: (results, showNewChallenge) {
              if (showNewChallenge ?? true) {
                return PromptPageView(
                  cachedResultsPresent: results.isNotEmpty,
                );
              }
              return CachedResults(
                results: results,
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
