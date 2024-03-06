import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/Widgets/My_Button.dart';
import 'package:jobspot/Widgets/My_Textfield.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  bool? isChecked = false;
  bool isLoading = false;
  get signUpWithEmailAndPassword => null;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 247, 255),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 239, 247, 255),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Create an Account",
            style: GoogleFonts.dmSans(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 3, 4, 90)),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
              style: GoogleFonts.dmSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: const Color.fromARGB(255, 3, 4, 90)),
              textAlign: TextAlign.center,
            ),
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
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Confirm Password",
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
            controller: repasswordController,
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
                SizedBox(
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
                          color: const Color.fromARGB(150, 3, 4, 90)),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          MyButton(
            onTap: signUpWithEmailAndPassword,
            hinText: "Sign Up",
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account yet? ",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: const Color.fromARGB(255, 4, 6, 126),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Sign In",
                  style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.amber[700],
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
