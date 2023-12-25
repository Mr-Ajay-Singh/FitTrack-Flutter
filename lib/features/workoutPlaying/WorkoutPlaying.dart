// https://www.figma.com/file/sY9Kfv36pnbHcaSt5qSqyH/Health-%26-Fitness-iOS-UI-Kit?type=design&node-id=1603-25356&mode=design&t=FUv24bBQCsHfqJAi-0

import 'package:flutter/material.dart';

import 'WorkoutPlayingComp.dart';

class WorkoutPlaying extends StatelessWidget {
  const WorkoutPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        body: Container(
          width: double.infinity,
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 28),
                SpeakerAndCloseItem(),
                SizedBox(width: 8),
                Text(
                  "3:25",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF101010),
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Skip Warm-up",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFB650E),
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(height: 440,),
                ExerciseRunningItem(isRunning: true,isCompleted: false,),
                ExerciseRunningItem(isRunning: false,isCompleted: false,),
                ExerciseRunningItem(isRunning: false,isCompleted: true,),

              ],
            ),
          ),
        ));
  }
}
