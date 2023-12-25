
import 'package:flutter/material.dart';

import '../exerciseList/ExerciseListComp.dart';
import 'SettingsComp.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: TopAppBarCustom(title: "Profile",)),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SettingsItem(),
                SizedBox(height: 12),
                SettingsItem(),
              ],
            ),
          ),
        ));
  }
}
