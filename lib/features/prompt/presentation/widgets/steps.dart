import 'dart:math';

import 'package:code_assist/core/theme/colors.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Steps extends StatefulWidget {
  final List<String> steps;
  const Steps({Key? key, required this.steps}) : super(key: key);

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final completedSteps = [];

  late ConfettiController _controllerBottomCenter;

  bool expanded = false;
  @override
  void initState() {
    super.initState();

    _controllerBottomCenter =
        ConfettiController(duration: const Duration(seconds: 6));
  }

  @override
  void dispose() {
    _controllerBottomCenter.dispose();
    super.dispose();
  }

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
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "📝 Need more ? Expand to see steps.",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: const Color(
                              0xFF6E6A7C,
                            ),
                          ),
                    ),
                  ),
                  Icon(
                    expanded ? Icons.expand_less : Icons.expand_more,
                  )
                ],
              ),
            ),
            if (expanded)
              const SizedBox(
                height: 4,
              ),
            if (expanded)
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Steps ${completedSteps.length}/${widget.steps.length}',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        ListView.builder(
                          itemCount: widget.steps.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final step = widget.steps[index];

                            final isDone = completedSteps.contains(step);

                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "${index + 1} . $step",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            decoration: isDone
                                                ? TextDecoration.lineThrough
                                                : TextDecoration.none,
                                          ),
                                    ),
                                  ),
                                  Checkbox(
                                    value: isDone,
                                    onChanged: (val) {
                                      if (isDone) {
                                        completedSteps.remove(step);
                                      } else {
                                        completedSteps.add(step);

                                        if (completedSteps.length ==
                                            widget.steps.length) {
                                          _controllerBottomCenter.play();
                                        }
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ConfettiWidget(
                      confettiController: _controllerBottomCenter,
                      blastDirectionality: BlastDirectionality
                          .explosive, // don't specify a direction, blast randomly
                      shouldLoop:
                          false, // start again as soon as the animation is finished
                      colors: const [
                        Colors.green,
                        Colors.blue,
                        Colors.pink,
                        Colors.orange,
                        Colors.purple
                      ], // manually specify the colors to be used
                      createParticlePath:
                          drawStar, // define a custom shape/path.
                    ),
                  ),
                ],
              )
          ],
        ));
  }

  Path drawStar(Size size) {
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }
}
