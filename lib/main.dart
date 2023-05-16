import 'package:flutter/material.dart';
import 'package:home_coach/screens/chat_screen.dart';
import 'package:home_coach/screens/login_screen.dart';
import 'package:home_coach/screens/welcome_screen.dart';
import 'package:home_coach/screens/register_screen.dart';
import 'package:home_coach/screens/exercises_screen.dart';
import 'package:home_coach/screens/start_chatting_screen.dart';
import 'package:home_coach/ExerciseScreens/exercise1.dart';
import 'package:home_coach/ExerciseScreens/exercise2.dart';
import 'package:home_coach/ExerciseScreens/exercise3.dart';
import 'package:home_coach/ExerciseScreens/exercise4.dart';
import 'package:home_coach/ExerciseScreens/exercise5.dart';
import 'package:home_coach/ExerciseScreens/exercise6.dart';
import 'package:home_coach/ExerciseScreens/exercise7.dart';
import 'package:home_coach/ExerciseScreens/exercise8.dart';
import 'package:home_coach/ExerciseScreens/exercise9.dart';
import 'package:home_coach/ExerciseScreens/exercise10.dart';
import 'package:home_coach/ExerciseScreens/exercise11.dart';
import 'package:home_coach/ExerciseScreens/exercise12.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        StartChatting.id: (context) => const StartChatting(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
        ExerciseScreen1.id: (context) => const ExerciseScreen1(),
        ExerciseScreen2.id: (context) => const ExerciseScreen2(),
        ExerciseScreen3.id: (context) => const ExerciseScreen3(),
        ExerciseScreen4.id: (context) => const ExerciseScreen4(),
        ExerciseScreen5.id: (context) => const ExerciseScreen5(),
        ExerciseScreen6.id: (context) => const ExerciseScreen6(),
        ExerciseScreen7.id: (context) => const ExerciseScreen7(),
        ExerciseScreen8.id: (context) => const ExerciseScreen8(),
        ExerciseScreen9.id: (context) => const ExerciseScreen9(),
        ExerciseScreen10.id: (context) => const ExerciseScreen10(),
        ExerciseScreen11.id: (context) => const ExerciseScreen11(),
        ExerciseScreen12.id: (context) => const ExerciseScreen12(),
      },
    );
  }
}
