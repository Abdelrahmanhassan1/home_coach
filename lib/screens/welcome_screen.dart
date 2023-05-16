import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:home_coach/screens/exercises_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const String id = "welcome_screen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation colorTweanAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    colorTweanAnimation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(_controller);

    _controller.forward();

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTweanAnimation.value,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  margin: const EdgeInsets.all(40.0),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Home Coach",
                        textStyle: const TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,

                        ),
                        textAlign: TextAlign.center,
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                  ),
                ),
              const Padding(

                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("appImages/logo.jpg"),
                  radius: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ExercisesScreen.id);
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(5.0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
