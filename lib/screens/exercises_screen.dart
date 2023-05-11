import 'package:flutter/material.dart';
import 'package:home_coach/screens/exercise_screen1.dart';

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
      appBar: AppBar(
        title: const Text(
          "Exercises",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black12,
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Range of Motion",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ExerciseScreen.id);

                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.green,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Up and Down",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Abduction",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.cyan,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Push Ups",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.deepPurpleAccent,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Biceps",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Range of Motion",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Range of Motion",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Range of Motion",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              height: 100.0,
              child: TextButton(
                child: const Text(
                  "Range of Motion",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
