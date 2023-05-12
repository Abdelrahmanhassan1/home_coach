import 'package:flutter/material.dart';
import 'package:home_coach/screens/start_chatting_screen.dart';
import "package:home_coach/UI/exercise_tile.dart";

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
            innerText: "Range of Motion",
            backgroundColor: Colors.cyan,
          ),
          ExerciseTile(
            innerText: "Up and Down",
            backgroundColor: Colors.blueAccent,
          ),
          ExerciseTile(
            innerText: "Up and Down",
            backgroundColor: Colors.blueAccent,
          ),
          ExerciseTile(
            innerText: "Up and Down",
            backgroundColor: Colors.blueAccent,
          ),
          ExerciseTile(
            innerText: "Up and Down",
            backgroundColor: Colors.blueAccent,
          ),
          ExerciseTile(
            innerText: "Up and Down",
            backgroundColor: Colors.blueAccent,
          ),
          ExerciseTile(
            innerText: "Up and Down",
            backgroundColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

