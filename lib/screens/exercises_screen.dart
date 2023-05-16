import 'package:flutter/material.dart';
import 'package:home_coach/screens/start_chatting_screen.dart';
import "package:home_coach/UI/exercise_tile.dart";
import 'package:home_coach/ExerciseScreens/exercise1.dart';
import 'package:home_coach/ExerciseScreens/exercise2.dart';
import 'package:home_coach/ExerciseScreens/exercise3.dart';
import 'package:home_coach/ExerciseScreens/exercise4.dart';

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
              backgroundColor: MaterialStateProperty.all(Colors.green)),
          onPressed: () {
            Navigator.pushNamed(context, StartChatting.id);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Chat With Doctor",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.chat,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Exercises",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black12,
      ),
      body: ListView(
        children: const [
          ExerciseTile(
            innerText: "Elbow Flexion",
            backgroundColor: Colors.deepPurpleAccent,
            id: ExerciseScreen1.id,
          ),
          ExerciseTile(
            innerText: "Shoulder Flexion",
            backgroundColor: Colors.cyan,
            id: ExerciseScreen2.id,
          ),
          ExerciseTile(
            innerText: "Knee to Chest",
            backgroundColor: Colors.cyan,
            id: ExerciseScreen3.id,
          ),
          ExerciseTile(
            innerText: "Hamstring Stretch",
            backgroundColor: Colors.cyan,
            id: ExerciseScreen4.id,
          ),
          ExerciseTile(
            innerText: "Leg Raises",
            backgroundColor: Colors.cyan,
            id: ExerciseScreen1.id,
          ),
          ExerciseTile(
            innerText: "Range of Motion",
            backgroundColor: Colors.cyan,
            id: ExerciseScreen2.id,
          ),
          ExerciseTile(
            innerText: "Knee to Chest",
            backgroundColor: Colors.cyan,
            id: ExerciseScreen3.id,
          ),
          ExerciseTile(
            innerText: "Hamstring Stretch",
            backgroundColor: Colors.cyan,
            id: ExerciseScreen4.id,
          ),
        ],
      ),
    );
  }
}
