import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopAppBarHomePage extends StatelessWidget {
  const TopAppBarHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Expanded(
              child: Text(
            "Welcome back, Jun 👋",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xFF101010),
              fontSize: 26,
            ),
          )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/images/notification.svg",
                  width: 24,
                  height: 24,
                ),
              ),
              Container(
                width: 20,
              ),
              InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Image.asset(
                    "assets/images/avatar.png",
                    height: 40,
                    width: 40,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ExerciseSetCardArgs {
  final String title;
  final String workouts;
  final String levels;
  final String image;

  ExerciseSetCardArgs(this.title, this.workouts, this.levels, this.image);
}

class ExerciseSetCard extends StatelessWidget {
  const ExerciseSetCard(
      {super.key,
      required this.exerciseSetCardArgs,
      required this.clickCallback});

  final ExerciseSetCardArgs exerciseSetCardArgs;
  final VoidCallback clickCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: clickCallback,
      child: SizedBox(
        width: 242,
        height: 216,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                    child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/exercise_women.png",
                    height: 216,
                    width: double.infinity,
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Essential yoga flows for every day",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF030303),
                          fontSize: 15,
                        ),
                      ),
                      Container(
                        height: 4,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "8 Workouts",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF9E9E9E),
                              fontSize: 13,
                            ),
                          ),
                          Container(
                            width: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/images/medal.svg",
                                width: 16,
                                height: 16,
                              ),
                              Container(
                                width: 4,
                              ),
                              const Text(
                                "All Levels",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF9E9E9E),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Container(
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              BottomNavSelected(),
              BottomNavNotSelected(),
              BottomNavNotSelected(),
              BottomNavNotSelected(),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavSelected extends StatelessWidget {
  const BottomNavSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          "workouts",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFFFB650E),
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SvgPicture.asset(
          "assets/images/ellipse.svg",
          width: 6,
          height: 6,
        )
      ],
    );
  }
}

class BottomNavNotSelected extends StatelessWidget {
  const BottomNavNotSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/clipboard.svg",
      width: 16,
      height: 16,
    );
  }
}
