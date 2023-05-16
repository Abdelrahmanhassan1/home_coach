import 'package:flutter/material.dart';
import "package:home_coach/screens/login_screen.dart";
import "package:home_coach/screens/register_screen.dart";

class StartChatting extends StatelessWidget {
  const StartChatting({super.key});
  static const String id = "start_chatting_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        title: const Text(
          'Chat With Doctor',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 48.0,
          ),
          Container(
            width: 400.0,
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: const Text(
                'Log In',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: 300.0,
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
