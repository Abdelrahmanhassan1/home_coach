import "package:flutter/material.dart";
import 'package:home_coach/ExerciseComponents/exercise_description.dart';
import 'package:home_coach/ExerciseComponents/exercise_image.dart';
import 'package:home_coach/ExerciseComponents/exercise_title.dart';
import 'package:home_coach/ExerciseComponents/exercise_timer.dart';
import 'package:home_coach/ExerciseComponents/exercise_button_timer.dart';

import 'dart:async';

class ExerciseScreen7 extends StatefulWidget {
  const ExerciseScreen7({Key? key}) : super(key: key);
  static const String id = "Exercise_Screen7";

  @override
  State<ExerciseScreen7> createState() => _ExerciseScreen7State();
}

class _ExerciseScreen7State extends State<ExerciseScreen7> {
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
        title: const ExerciseTitle(title: "Hip Flexion"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              ExerciseImage(imagePath: "appImages/hip_flexion.png"),
              ExerciseDescription(
                description:
                    "Lie on your back with your legs straight. Lift one leg up, keeping your knee straight. Hold for 5 seconds. Slowly lower your leg back down. ",
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
