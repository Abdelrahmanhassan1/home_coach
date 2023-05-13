import 'package:flutter/material.dart';

class ExerciseImage extends StatelessWidget {
  const ExerciseImage({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}