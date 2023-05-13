import 'package:flutter/material.dart';

class ExerciseTimer extends StatelessWidget {
  const ExerciseTimer({
    super.key,
    required int start,
  }) : _start = start;

  final int _start;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        "$_start",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}