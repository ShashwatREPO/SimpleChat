import 'package:chatapp/Pages/Login.dart';
import 'package:chatapp/Pages/Register.dart';
import 'package:chatapp/Widget/AccentButton.dart';
import 'package:chatapp/Widget/Logo.dart';
import 'package:chatapp/Widget/TextNavigation.dart';
import 'package:chatapp/Widget/alternativeButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Logo(),
          Center(
            child: Container(
              height: 525,
              child: Stack(children: [
                Image.asset("lib/images/Hero.png", height: 600),
                Positioned(
                    top: 450,
                    left: 10,
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          "Start\nYour Conversation",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                              height: 1.1),
                        ),
                      ],
                    )))
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              "simple app that keeps you connected with the people who matters the most!",
              style: GoogleFonts.poppins(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: AccentButton(
              text: "Login",
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: AlternativeButton(
              text: "Continue with google",
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextNavigation(
              nonClickableText: "Don't have an account?",
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
              },
              ClickableText: "Register")
        ],
      )),
    );
  }
}
