//https://www.figma.com/file/sY9Kfv36pnbHcaSt5qSqyH/Health-%26-Fitness-iOS-UI-Kit?node-id=1603%3A26726&mode=dev

import 'package:flutter/material.dart';

import 'StartWorkoutComp.dart';

class WorkoutComplete extends StatelessWidget {
  const WorkoutComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              child: const Text(
                "Workout Summary",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF101010),
                  fontSize: 21,
                ),
              ),
            )),
        bottomNavigationBar: const PrimaryButton(text: "continue"),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GoodJobItem(),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: DurationCalorieItem(
                            title: "Duration",
                            value: "10:23",
                            icon: "timer.svg")),
                    SizedBox(width: 12),
                    Expanded(
                        child: DurationCalorieItem(
                            title: "Calories",
                            value: "96 Cal",
                            icon: "timer.svg",
                          bgColor: Color(0xFFF0EDF8),
                          iconColor: Color(0xFFa390e4),
                        )),
                  ],
                ),
                SizedBox(height: 24),
                Text(
                    "Where did you workout?",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF101010),
                        fontSize: 19,
                        ),
                    ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    WorkoutCompleteSelectionItem(),
                    SizedBox(width: 16),
                    WorkoutCompleteSelectionItem(),
                    SizedBox(width: 16),
                    WorkoutCompleteSelectionItem(),
                    SizedBox(width: 16),
                  ],
                ),

                SizedBox(height: 24),
                Text(
                  "How are you feeling?",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF101010),
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    WorkoutCompleteSelectionItem(),
                    SizedBox(width: 16),
                    WorkoutCompleteSelectionItem(),
                    SizedBox(width: 16),
                    WorkoutCompleteSelectionItem(),
                    SizedBox(width: 16),
                    WorkoutCompleteSelectionItem(),
                    SizedBox(width: 16),
                  ],
                ),

              ],
            ),
          ),
        ));
  }
}
