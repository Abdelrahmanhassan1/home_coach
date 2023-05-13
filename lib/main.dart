import 'package:flutter/material.dart';
import 'package:home_coach/screens/chat_screen.dart';
import 'package:home_coach/ExerciseScreens/exercise1.dart';
import 'package:home_coach/screens/exercises_screen.dart';
import 'package:home_coach/screens/login_screen.dart';
import 'package:home_coach/screens/register_screen.dart';
import 'package:home_coach/screens/start_chatting_screen.dart';
import 'package:home_coach/screens/welcome_screen.dart';
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
        ExerciseScreen.id: (context) => const ExerciseScreen(),
        StartChatting.id: (context) => const StartChatting(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}
