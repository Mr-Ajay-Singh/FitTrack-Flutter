import 'package:flutter/material.dart';

import '../exerciseList/ExerciseListComp.dart';
import 'WorkoutOverviewComp.dart';

class WorkoutOverview extends StatelessWidget {
  const WorkoutOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: TopAppBarCustom(title: "All Exercise",
                firstIcon: Icons.search, secondIcon: Icons.search)),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                WorkoutDetails(),
                SizedBox(height: 32),
                Text(
                  "Workouts",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF101010),
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 16),
                WorkoutItems(),
                SizedBox(height: 12),
                WorkoutItems(),
                SizedBox(height: 12),
                WorkoutItems(),
                SizedBox(height: 12),
                WorkoutItems(),
                SizedBox(height: 12),
                WorkoutItems(),
                SizedBox(height: 12),
              ],
            ),
          ),
        ));
  }
}
