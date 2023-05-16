import "package:flutter/material.dart";
import 'package:home_coach/ExerciseComponents/exercise_description.dart';
import 'package:home_coach/ExerciseComponents/exercise_image.dart';
import 'package:home_coach/ExerciseComponents/exercise_title.dart';
import 'package:home_coach/ExerciseComponents/exercise_timer.dart';
import 'package:home_coach/ExerciseComponents/exercise_button_timer.dart';

import 'dart:async';

class ExerciseScreen8 extends StatefulWidget {
  const ExerciseScreen8({Key? key}) : super(key: key);
  static const String id = "Exercise_Screen8";

  @override
  State<ExerciseScreen8> createState() => _ExerciseScreen8State();
}

class _ExerciseScreen8State extends State<ExerciseScreen8> {
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
        title: const ExerciseTitle(title: "Sitting Hip Abduction"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              ExerciseImage(imagePath: "appImages/hip_sitting_abduction.png"),
              ExerciseDescription(
                description:
                    "Sit on a chair with your back straight and your feet flat on the floor. Lift one leg out to the side, keeping your knee straight. Lower your leg back down to the starting position. Repeat on the other side.",
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
