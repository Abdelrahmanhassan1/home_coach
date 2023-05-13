import 'package:flutter/material.dart';

class ExerciseButtonTimer extends StatelessWidget {
  const ExerciseButtonTimer({
    super.key,
    required this.btnText,
    required this.startTimer,
  });

  final String btnText;
  final Function startTimer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0)),
        elevation: MaterialStateProperty.all(10.0),
      ),
      onPressed: () {
        startTimer();
      },
      child: Text(
        btnText,
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
