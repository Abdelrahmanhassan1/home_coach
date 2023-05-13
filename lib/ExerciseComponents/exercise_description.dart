import 'package:flutter/material.dart';

class ExerciseDescription extends StatelessWidget {
  const ExerciseDescription({
    super.key,
    required this.description,
  });

  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(255, 147, 215, 246),
      ),
      margin: const EdgeInsets.all(10.0),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );
  }
}