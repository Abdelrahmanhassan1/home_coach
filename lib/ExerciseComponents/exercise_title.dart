import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  const ExerciseTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return
      Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.black, fontSize: 25.0),

      );
  }
}