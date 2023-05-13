import "package:flutter/material.dart";
import 'package:home_coach/ExerciseComponents/exercise_description.dart';
import 'package:home_coach/ExerciseComponents/exercise_image.dart';
import 'package:home_coach/ExerciseComponents/exercise_title.dart';
import 'package:home_coach/ExerciseComponents/exercise_timer.dart';
import 'package:home_coach/ExerciseComponents/exercise_button_timer.dart';

import 'dart:async';

class ExerciseScreen4 extends StatefulWidget {
  const ExerciseScreen4({Key? key}) : super(key: key);
  static const String id = "Exercise_Screen4";

  @override
  State<ExerciseScreen4> createState() => _ExerciseScreen4State();
}

class _ExerciseScreen4State extends State<ExerciseScreen4> {
  late Timer _timer = Timer.periodic(
    const Duration(seconds: 1),
    (Timer timer) {},
  );
  late String btnText = "Start";

  int _start = 40;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            btnText = "Done";
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const ExerciseTitle(title: "Leg Up and Down"),
        backgroundColor: const Color.fromARGB(255, 7, 175, 175),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              ExerciseImage(imagePath: "appImages/leg_expansion.jpg"),
              ExerciseDescription(
                description:
                    "Lie on your back with your legs straight and together. Keeping your legs straight, lift them up toward the ceiling until they form a right angle with your torso. ... Slowly lower your legs back down to the starting position. Repeat 10 times.",
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: 150.0,
                height: 50.0,
                child: ExerciseButtonTimer(
                    btnText: btnText, startTimer: startTimer),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ExerciseTimer(start: _start),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
