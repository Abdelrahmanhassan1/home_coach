
import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_coach/UI/rounded_button.dart';
import 'package:home_coach/constants.dart';
import 'package:home_coach/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:cool_alert/cool_alert.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: "logo",
                  child: SizedBox(
                    height: 200.0,
                    child: Image.asset('appImages/flashChat.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldInputDecoration.copyWith(
                    hintText: "Enter your email"),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldInputDecoration.copyWith(
                    hintText: "Enter your password"),
              ),
              const SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                btnColor: Colors.lightBlueAccent,
                btnText: "Log In",
                onPressed: (){},
                // onPressed: () async {
                //   setState(() {
                //     showSpinner = true;
                //   });
                //   try {
                //     final user = await _auth.signInWithEmailAndPassword(
                //         email: email, password: password);
                //
                //     if (user != null) {
                //       Navigator.pushNamed(context, ChatScreen.id);
                //     }
                //     setState(() {
                //       showSpinner = false;
                //     });
                //   } catch (e) {
                //     CoolAlert.show(
                //       context: context,
                //       type: CoolAlertType.error,
                //       title: "Error",
                //       titleTextStyle: const TextStyle(
                //         color: Colors.white,
                //         fontSize: 30,
                //       ),
                //       text: "Invalid email or password",
                //       textTextStyle: const TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //       ),
                //     );
                //
                //     setState(() {
                //       showSpinner = false;
                //     });
                //   }
                // },
              ),
            ],
          ),
        ),
      ),
    );
  }
}