import 'package:flutter/material.dart';

class SpeakerAndCloseItem extends StatelessWidget {
  const SpeakerAndCloseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.close,
            color: Color(0xFFFB650E),
            size: 24,
          ),
          Icon(
            Icons.volume_down_sharp,
            color: Color(0xFFFB650E),
            size: 24,
          ),
        ],
      ),
    );
  }
}

class ExerciseRunningItem extends StatelessWidget {
  const ExerciseRunningItem(
      {super.key, required this.isRunning, required this.isCompleted});

  final bool isRunning;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 88,
              width: 64,
              color: Color(isCompleted
                  ? 0xFFE7E7E7
                  : isRunning
                      ? 0xFFFF9050
                      : 0xFFFDFDFD),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.centerRight,
              child: Text(
                "0:25",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(isCompleted ? 0xFF9E9E9E : 0xFF101010),
                  fontSize: 15,
                ),
              ),
            ),
            Expanded(
                child: Container(
              height: 88,
              color: Color(isCompleted ? 0xFFE7E7E7 : 0xFFFDFDFD),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Dumbbell Lunges",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(isCompleted ? 0xFF9E9E9E : 0xFF101010),
                      fontSize: 15,
                    ),
                  ),
                  if (isCompleted) ...[
                    const Icon(
                      Icons.arrow_right_alt,
                      color: Color(0xFF101010),
                      size: 16,
                    ),
                  ]
                ],
              ),
            ))
          ],
        ),
        const Divider(
          height: 1,
          color: Color(0xFFE7E7E7),
        )
      ],
    );
  }
}
