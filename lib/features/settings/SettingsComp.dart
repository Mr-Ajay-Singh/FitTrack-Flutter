// https://www.figma.com/file/sY9Kfv36pnbHcaSt5qSqyH/Health-%26-Fitness-iOS-UI-Kit?node-id=1606%3A21246&mode=dev

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color(0x0F565656),
          blurRadius: 24,
          offset: Offset(4, 8), // Shadow position
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/images/message_question.svg",
            width: 24,
            height: 24,
            color: const Color(0xFFFB650E),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Privacy policy",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF101010),
                    fontSize: 14,
                  ),
                ),
                SvgPicture.asset(
                  "assets/images/right_arrow.svg",
                  width: 16,
                  height: 16,
                  color: const Color(0xFFCFCFCF),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
