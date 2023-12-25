import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Container(
        width: double.infinity,
        height: 51,
        decoration: BoxDecoration(
            color: const Color(0xFFFB650E),
            borderRadius: BorderRadius.circular(40)),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 38),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class GoodJobItem extends StatelessWidget {
  const GoodJobItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 171,
      decoration: BoxDecoration(
          color: const Color(0xFFFFE7DA),
          borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/congrats.webp",
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.topCenter,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/confetti.webp",
                height: 48,
                width: 48,
              ),
              const SizedBox(height: 12),
              const Text(
                "Good Job!",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFB650E),
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "You have completed\nDrill Essentials ",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFB650E),
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DurationCalorieItem extends StatelessWidget {
  const DurationCalorieItem({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.iconColor = const Color(0xFFffc238),
    this.bgColor = const Color(0xFFFFF3D8),
  });

  final String title;
  final String value;
  final String icon;
  final Color bgColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              SvgPicture.asset(
                "assets/images/$icon",
                width: 24,
                height: 24,
                color: iconColor,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6E6E6E),
                  fontSize: 13,
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xFF101010),
              fontSize: 26,
            ),
          )
        ],
      ),
    );
  }
}

class WorkoutCompleteSelectionItem extends StatefulWidget {
  const WorkoutCompleteSelectionItem({super.key, this.isItemSelected = false});

  final bool isItemSelected;

  @override
  State<WorkoutCompleteSelectionItem> createState() =>
      _WorkoutCompleteSelectionItemState();
}

class _WorkoutCompleteSelectionItemState
    extends State<WorkoutCompleteSelectionItem> {
  bool isItemSelected = false;

  @override
  void initState() {
    isItemSelected = widget.isItemSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isItemSelected = !isItemSelected;
        });
      },
      borderRadius: BorderRadius.circular(40),
      child: Container(
        decoration: BoxDecoration(
          color: isItemSelected ? const Color(0xFFFBDCCB) : const Color(0xFFE7E7E7),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
              width: 2,
              color: isItemSelected ? const Color(0xFFFB650E) : const Color(0xFFE7E7E7)),
        ),
        padding: const EdgeInsets.all(16),
        child: Image.asset(
          "assets/images/home_image.webp",
          height: 24,
          width: 24,
        )
      ),
    );
  }
}
