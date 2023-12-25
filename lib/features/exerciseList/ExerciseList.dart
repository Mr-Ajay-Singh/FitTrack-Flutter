import 'package:flutter/material.dart';

import 'ExerciseListComp.dart';

class ExerciseList extends StatelessWidget {
  const ExerciseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100), child: TopAppBarCustom(title: "All Exercise",)),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ExerciseItem(),
                SizedBox(height: 20),

                ExerciseItem(),
                SizedBox(height: 20),

                ExerciseItem(),
                SizedBox(height: 20),

                ExerciseItem(),
                SizedBox(height: 20),

                ExerciseItem(),
                SizedBox(height: 20),

                ExerciseItem(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
