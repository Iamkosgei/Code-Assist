import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/presentation/blocs/get_cached_results_cubit/get_cached_results_cubit.dart';
import 'package:code_assist/features/prompt/presentation/widgets/cached_result_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CachedResults extends StatelessWidget {
  final List<Result> results;
  const CachedResults({Key? key, required this.results}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved challenges'),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            context.read<GetCachedResultsCubit>().fetchCachedResults();
            return Future.value();
          },
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
            itemCount: results.length,
            itemBuilder: (context, index) {
              final result = results[index];
              return CachedResultItem(
                result: result,
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<GetCachedResultsCubit>().toggleShowNewChallengeView();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
