import "package:flutter/material.dart";
import 'dart:async';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({Key? key}) : super(key: key);
  static const String id = "Exercise1_Screen";

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  late Timer _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
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
        title: const Text(
          "Exercise 1",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black12,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue,
            margin: const EdgeInsets.all(10.0),
            child: const Text(
              "Range of Motion",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.green,
            margin: const EdgeInsets.all(10.0),
            child: const Text(
              "Leg Up and Down",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage("appImages/leg_expansion.jpg"),
            radius: 150,
          ),
          Container(
            width: double.infinity,
            color: Colors.green,
            margin: const EdgeInsets.all(10.0),
            child: const Text(
              "Leg Up and Down",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              startTimer();
            },
            child: const Text("start"),
          ),
          Text("$_start")
        ],
      ),
    );
  }
}
