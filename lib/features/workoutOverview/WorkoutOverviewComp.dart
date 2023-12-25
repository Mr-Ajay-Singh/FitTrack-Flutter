import 'package:flutter/material.dart';

import '../exerciseList/ExerciseListComp.dart';

class WorkoutDetails extends StatelessWidget {
  const WorkoutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/exercise_women.webp",
                height: 164,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: WorkoutDifficultyLevel(
                  text: "Moderate", colors: Color(0xFF00CE56)),
            )
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "This workout contains a mix of cardio, strength and isometric exercises to improve your tone muscle 🔥.",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xFF101010),
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 12),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconAndTextDesc(text: "15 min", icon: Icons.timer_sharp),
            SizedBox(width: 12),
            IconAndTextDesc(text: "Total body", icon: Icons.flag),
            SizedBox(width: 12),
            IconAndTextDesc(text: "Mobility", icon: Icons.electric_bolt),
            SizedBox(width: 12),
          ],
        ),
        const SizedBox(height: 8),
        const IconAndTextDesc(text: "Mobility", icon: Icons.electric_bolt),
        const SizedBox(height: 20),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SecondaryButtonWithImage(
              text: "Settings",
              icon: Icons.settings_outlined,
            ),
            SizedBox(width: 12),
            PrimaryButtonWithImage(
              text: "Start Workout",
              icon: Icons.play_arrow_outlined,
            )
          ],
        ),
      ],
    );
  }
}

class WorkoutDifficultyLevel extends StatelessWidget {
  const WorkoutDifficultyLevel(
      {super.key, required this.text, required this.colors});

  final String text;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: colors, width: 2),
          color: colors,
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class SecondaryButtonWithImage extends StatelessWidget {
  const SecondaryButtonWithImage(
      {super.key, required this.text, required this.icon});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFCFCFCF), width: 2),
          borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              color: const Color(0xFF9E9E9E),
              size: 16,
            ),
            const SizedBox(width: 2),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF9E9E9E),
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PrimaryButtonWithImage extends StatelessWidget {
  const PrimaryButtonWithImage(
      {super.key, required this.text, required this.icon});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFFB650E),
          borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 38),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 16,
            ),
            const SizedBox(width: 2),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WorkoutItems extends StatelessWidget {
  const WorkoutItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            "assets/images/fitness_image.webp",
            height: 92,
            width: 92,
            fit: BoxFit.fill,
          )
        ),
        const SizedBox(width: 16),
        const Text(
            "0:30",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFF101010),
                fontSize: 14,
                ),
            ),
        const SizedBox(width: 16),
        const Text(
          "Crunches",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF101010),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
