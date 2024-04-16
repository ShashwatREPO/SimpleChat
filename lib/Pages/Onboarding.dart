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

          Logo(),
          
          Center(
            child: Stack(children: [
              Image.asset("lib/images/Hero.png", height: 450),
              Positioned(
                  top: 370,
                  child: Center(
                      child: Text(
                    "Start\nYour Conversation",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700, fontSize: 32, height: 1.1),
                  )))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "simple app that keeps you connected with the people who matters the most!",
              style: GoogleFonts.poppins(),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AccentButton(
              text: "Login",
              onTap: () {
                
              },
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AlternativeButton(
              text: "Continue with google",
              onTap: (){},
            ),
          ),
          SizedBox(height: 20,),
          TextNavigation(nonClickableText: "Don't have an account ?", onTap: (){}, ClickableText: "Sign in")

        ],
      )),
    );
  }
}
