import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/Screens/ForgotPass.dart';
import 'package:jobspot/Screens/Home.dart';

import 'package:jobspot/Screens/Register.dart';
import 'package:jobspot/Widgets/My_Button.dart';
import 'package:jobspot/Widgets/My_Textfield.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = false;
  get signInWithEmailAndPassword => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 162, 53),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          Text(
            "กรุณาเข้าสู่ระบบ",
            style: GoogleFonts.dmSans(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 3, 4, 90)),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Email",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 3, 4, 90)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          MyTextfield(
            controller: emailController,
            labelText: "",
            obscureText: false,
            hintText: "Enter your Email.", 
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Password",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 3, 4, 90)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          MyTextfield(
            controller: passwordController,
            labelText: "",
            obscureText: true,
            hintText: "Enter your Password.", 
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: Row(children: [
                    Transform.scale(
                      scale: 0.7,
                      child: Checkbox(
                        value: isChecked,
                        activeColor: const Color.fromARGB(255, 3, 4, 90),
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        },
                        side: const BorderSide(
                          color: Color.fromARGB(103, 3, 4, 90),
                          width: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 0,
                    ),
                    Text(
                      "Remember me",
                      style: GoogleFonts.dmSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 3, 4, 90)),
                    ),
                  ]),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: ForgotPass()));
                  },
                  child: Text(
                    "Forgot password?",
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          MyButton(
            onTap: signInWithEmailAndPassword,
            hinText: "Sign In",
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You don't have an account yet? ",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 4, 6, 126),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: Register()));
                },
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
