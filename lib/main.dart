import 'package:flutter/material.dart';
import 'package:home_coach/screens/exercise_screen1.dart';
import 'package:home_coach/screens/exercises_screen.dart';
import 'package:home_coach/screens/login_screen.dart';
import 'package:home_coach/screens/register_screen.dart';
import 'package:home_coach/screens/start_chatting_screen.dart';
import 'package:home_coach/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Coach',
      theme: ThemeData.light(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        ExercisesScreen.id: (context) => const ExercisesScreen(),
        ExerciseScreen.id: (context) => const ExerciseScreen(),

        StartChatting.id: (context) => const StartChatting(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
      },
    );
  }
}
