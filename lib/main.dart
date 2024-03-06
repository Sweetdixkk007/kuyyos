import 'package:flutter/material.dart';
import 'package:jobspot/Screens/ForgotPass.dart';
import 'package:jobspot/Screens/Login.dart';
import 'package:jobspot/Screens/Register.dart';
import 'package:jobspot/Screens/SecondSplash.dart';
import 'package:jobspot/Screens/Splash.dart';
import 'package:jobspot/Screens/Success.dart';

void main() {
  runApp(const JobSpot());
}

class JobSpot extends StatelessWidget {
  const JobSpot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
