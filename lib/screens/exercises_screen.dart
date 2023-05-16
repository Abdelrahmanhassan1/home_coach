import 'package:flutter/material.dart';
import 'package:home_coach/screens/start_chatting_screen.dart';
import "package:home_coach/UI/exercise_tile.dart";
import 'package:home_coach/ExerciseScreens/exercise1.dart';
import 'package:home_coach/ExerciseScreens/exercise2.dart';
import 'package:home_coach/ExerciseScreens/exercise3.dart';
import 'package:home_coach/ExerciseScreens/exercise4.dart';
import 'package:home_coach/ExerciseScreens/exercise5.dart';
import 'package:home_coach/ExerciseScreens/exercise6.dart';
import 'package:home_coach/ExerciseScreens/exercise7.dart';
import 'package:home_coach/ExerciseScreens/exercise8.dart';
import 'package:home_coach/ExerciseScreens/exercise9.dart';
import 'package:home_coach/ExerciseScreens/exercise10.dart';
import 'package:home_coach/ExerciseScreens/exercise11.dart';
import 'package:home_coach/ExerciseScreens/exercise12.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({Key? key}) : super(key: key);
  static const String id = "exercises_screen";

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 40.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent)),
          onPressed: () {
            Navigator.pushNamed(context, StartChatting.id);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Chat With Doctor",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.chat,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Exercises",
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        children: const [
          ExerciseTile(
            innerText: "Elbow Flexion",
            backgroundColor: Color(0xfffd7f6f),
            id: ExerciseScreen1.id,
          ),
          ExerciseTile(
            innerText: "Shoulder Flexion",
            backgroundColor: Color(0xff7eb0d5),
            id: ExerciseScreen2.id,
          ),
          ExerciseTile(
            innerText: "Shoulder Abduction",
            backgroundColor: Color(0xffb2e061),
            id: ExerciseScreen3.id,
          ),
          ExerciseTile(
            innerText: "Wrist Extension",
            backgroundColor: Color(0xffbd7ebe),
            id: ExerciseScreen4.id,
          ),
          ExerciseTile(
            innerText: "Chest Press Outs",
            backgroundColor: Color(0xffffb55a),
            id: ExerciseScreen5.id,
          ),
          ExerciseTile(
            innerText: "Hip Abduction",
            backgroundColor: Color(0xffffee65),
            id: ExerciseScreen6.id,
          ),
          ExerciseTile(
            innerText: "Hip Flexion",
            backgroundColor: Color(0xffbeb9db),
            id: ExerciseScreen7.id,
          ),
          ExerciseTile(
            innerText: "Sitting Hip Abduction",
            backgroundColor: Color(0xfffdcce5),
            id: ExerciseScreen8.id,
          ),
          ExerciseTile(
            innerText: "Sitting Hip Flexion",
            backgroundColor: Color(0xff8bd3c7),
            id: ExerciseScreen9.id,
          ),
          ExerciseTile(
            innerText: "Bridging",
            backgroundColor: Color(0xfffd7f6f),
            id: ExerciseScreen10.id,
          ),
          ExerciseTile(
            innerText: "Heel Slides",
            backgroundColor: Color(0xff7eb0d5),
            id: ExerciseScreen11.id,
          ),
          ExerciseTile(
            innerText: "Sitting Knee Extension",
            backgroundColor: Color(0xffb2e061),
            id: ExerciseScreen12.id,
          ),
        ],
      ),
    );
  }
}
