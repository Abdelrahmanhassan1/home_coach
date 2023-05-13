import 'package:flutter/material.dart';
import 'package:home_coach/ExerciseScreens/exercise1.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile({
    super.key,
    required this.innerText,
    required this.backgroundColor,
  });

  final String innerText;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Container(
        width: double.infinity,
        color: backgroundColor,
        height: 100.0,
        child: TextButton(
          child: Text(
            innerText,
            style: const TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          onPressed: () {
            Navigator.pushNamed(context, ExerciseScreen.id);
          },
        ),
      ),
    );
  }
}
