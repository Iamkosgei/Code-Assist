import 'package:code_assist/core/service_locator/get_it.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';

import 'package:code_assist/features/prompt/presentation/blocs/cached_result_status_cubit/cached_result_status_cubit.dart';
import 'package:code_assist/features/prompt/presentation/widgets/hint.dart';
import 'package:code_assist/features/prompt/presentation/widgets/question.dart';
import 'package:code_assist/features/prompt/presentation/widgets/steps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultsPage extends StatelessWidget {
  final Result result;
  const ResultsPage({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<CachedResultStatusCubit>()..checkSavedStatus(result),
      child: BlocConsumer<CachedResultStatusCubit, CachedResultStatusState>(
        listener: (context, state) {
          if (state is CachedResultStatusLoadedState && state.showSnackbar) {
            final message =
                state.isSaved ? "Solution saved" : "Solution deleted";
            final snackBar = SnackBar(
              content: Text(message),
              showCloseIcon: true,
              behavior: SnackBarBehavior.floating,
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              actions: [
                state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loaded: (isSaved, showSnackbar) {
                    return IconButton(
                        onPressed: () async {
                          if (isSaved) {
                            context
                                .read<CachedResultStatusCubit>()
                                .deleteCachedResult(result);
                          } else {
                            context
                                .read<CachedResultStatusCubit>()
                                .saveResult(result);
                          }
                        },
                        icon: Icon(
                          isSaved
                              ? Icons.bookmark
                              : Icons.bookmark_add_outlined,
                        ));
                  },
                )
              ],
            ),
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Question(
                            question: result.question ?? '',
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Hint(
                            hint: result.hint ?? '',
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Steps(
                            steps: result.steps ?? <String>[],
                          ),
                        ],
                      ))),
            ),
          );
        },
      ),
    );
  }
}
