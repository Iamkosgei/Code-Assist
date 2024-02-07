import 'package:code_assist/core/theme/colors.dart';
import 'package:flutter/material.dart';

class Hint extends StatelessWidget {
  final String hint;
  const Hint({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '💡 Hint',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: const Color(
                      0xFF6E6A7C,
                    ),
                  ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              hint,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ));
  }
}
