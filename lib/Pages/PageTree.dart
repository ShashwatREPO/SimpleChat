import 'package:chatapp/Pages/Homepage.dart';
import 'package:chatapp/Pages/Onboarding.dart';
import 'package:chatapp/Services/Auth.dart';
import 'package:flutter/material.dart';

class PageTree extends StatelessWidget {
  const PageTree({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: AuthServices().authStateChange,
        builder: (context, snapshot) {
          if (snapshot.hasData){
            return HomePage();
          }
          else{
            return OnBoardingPage();
          }
        });
  }
}
