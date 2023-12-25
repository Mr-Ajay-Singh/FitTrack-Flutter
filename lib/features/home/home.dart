import 'package:flutter/material.dart';

import 'homeComp.dart';
import 'homeUtils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    List<ExerciseSetCardArgs> exerciseItems = exerciseTypeItems();
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: TopAppBarHomePage()),
      bottomNavigationBar: const BottomNavigationBarCustom(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 20,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Top picks for you",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF030303),
                    fontSize: 19,
                  ),
                ),
              ),
              Container(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < exerciseItems.length; i++) ...[
                      ExerciseSetCard(
                          exerciseSetCardArgs: exerciseItems[i],
                          clickCallback: () {}),
                      const SizedBox(
                        width: 12,
                      ),
                    ]
                  ],
                ),
              ),


              Container(
                height: 20,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Top picks for you",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF030303),
                    fontSize: 19,
                  ),
                ),
              ),
              Container(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < exerciseItems.length; i++) ...[
                      ExerciseSetCard(
                          exerciseSetCardArgs: exerciseItems[i],
                          clickCallback: () {}),
                      const SizedBox(
                        width: 12,
                      ),
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
