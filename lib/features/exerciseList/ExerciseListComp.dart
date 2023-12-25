import 'package:flutter/material.dart';

class TopAppBarCustom extends StatelessWidget {
  const TopAppBarCustom({super.key,required this.title, this.firstIcon, this.secondIcon});

  final String title;
  final IconData? firstIcon;
  final IconData? secondIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF101010),
                      fontSize: 21,
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  if (firstIcon != null) ...[
                    InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 24,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                  if (secondIcon != null) ...[
                    InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.black,
                          size: 24,
                        )),
                  ]
                ],
              ),
            ],
          ),
        ));
  }
}

class ExerciseItem extends StatelessWidget {
  const ExerciseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              "assets/images/fitness_image.png",
              height: 108,
              width: 108,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 2,
            ),
            DifficultyLevel(text: "Moderate", colors: Colors.green),
            SizedBox(
              height: 8,
            ),
            Text(
              "Dumbbell Lunges",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF101010),
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconAndTextDesc(text: "Lower Body", icon: Icons.flag),
                SizedBox(width: 8),
                IconAndTextDesc(text: "Lower Body", icon: Icons.electric_bolt),
                SizedBox(width: 8),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconAndTextDesc(text: "Lower Body", icon: Icons.electric_bolt),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class DifficultyLevel extends StatelessWidget {
  const DifficultyLevel({super.key, required this.text, required this.colors});

  final String text;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: colors, width: 2),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: colors,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class IconAndTextDesc extends StatelessWidget {
  const IconAndTextDesc({super.key, required this.text, required this.icon});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: const Color(0xFF9E9E9E),
          size: 24,
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF9E9E9E),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
