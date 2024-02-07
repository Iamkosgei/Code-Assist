import 'package:code_assist/core/routing/routes.dart';
import 'package:code_assist/core/theme/colors.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/presentation/blocs/get_cached_results_cubit/get_cached_results_cubit.dart';
import 'package:flutter/material.dart';
import 'package:code_assist/core/network/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CachedResultItem extends StatelessWidget {
  final Result result;
  const CachedResultItem({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '${result.question}',
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: containerBG,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.2),
                blurRadius: 32,
                offset: const Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              context.push(resultsPage, extra: result).then((value) {
                context.read<GetCachedResultsCubit>().fetchCachedResults();
              });
            },
            child: Text(
              result.question?.removeEmptyLines() ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
