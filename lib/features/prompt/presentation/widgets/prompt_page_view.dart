import 'package:code_assist/core/routing/routes.dart';
import 'package:code_assist/features/prompt/presentation/blocs/get_cached_results_cubit/get_cached_results_cubit.dart';
import 'package:code_assist/features/prompt/presentation/blocs/get_prompt_result_cubit/get_prompt_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PromptPageView extends StatefulWidget {
  final bool cachedResultsPresent;
  const PromptPageView({Key? key, required this.cachedResultsPresent})
      : super(key: key);

  @override
  State<PromptPageView> createState() => _PromptPageViewState();
}

class _PromptPageViewState extends State<PromptPageView> {
  final formKey = GlobalKey<FormState>();
  late String? question;
  var language = "Dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code assist'),
        actions: [
          if (widget.cachedResultsPresent)
            IconButton(
                onPressed: () {
                  context
                      .read<GetCachedResultsCubit>()
                      .toggleShowNewChallengeView();
                },
                icon: const Icon(
                  Icons.history_outlined,
                ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: BlocConsumer<GetPromptResultCubit, GetPromptResultState>(
              listener: (context, state) {
                if (state is GetPromptResultLoadedState) {
                  formKey.currentState?.reset();
                  context
                      .push(
                    resultsPage,
                    extra: state.result.copyWith(
                      question: question,
                    ),
                  )
                      .then((value) {
                    context.read<GetCachedResultsCubit>().fetchCachedResults();
                  });
                } else if (state is GetPromptResultErrorState) {
                  final error = state.l.maybeWhen(
                    serverFailure: (e) => "Server error.",
                    invalidFormatFailure: () =>
                        "Invalid format, please try again.",
                    orElse: () => "Something went wrong",
                  );

                  final snackBar = SnackBar(
                    content: Text(error),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.red,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Select the programming language.'),
                    const SizedBox(
                      height: 4,
                    ),
                    DropdownButtonFormField(
                      dropdownColor: Colors.white,
                      value: language,
                      items: ["Dart", "Java", "Python", "Javascript"]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (val) {
                        if (val == null) return;
                        language = val;
                      },
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text('Enter your question.'),
                    const SizedBox(
                      height: 4,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        minLines: 12,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your question";
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          question = newValue;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: state is GetPromptResultLoadingState
                          ? null
                          : () {
                              if (formKey.currentState?.validate() ?? false) {
                                formKey.currentState?.save();

                                FocusScope.of(context).unfocus();

                                final message =
                                    buildAPrompt(language, question);
                                context
                                    .read<GetPromptResultCubit>()
                                    .fetchPromptResult(message);
                              }
                            },
                      child: state is GetPromptResultLoadingState
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Text(
                              'Submit',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.black),
                            ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

String buildAPrompt(String language, question) {
  return "Solve this question '$question'. Write down a detailed hint and explation on how to go about this with key 'hint', Write down steps on how to solve this, return in json format, json key 'steps' should return steps without giving out the answer. Provide a  RFC8259 compliant JSON response  following this format without deviation.{'hint': "
      ", “steps”: [“”,“”]} in $language. excape characters that might break the json response.";
}
