import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/utils/animation_constants.dart';

import 'package:quiz_app/view/notes_screen/notes_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => NotesScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Lottie.asset(
      AnimationConstants.splash_logo,
      ),
    ));
  }
}
