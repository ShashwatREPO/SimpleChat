import 'package:chatapp/Pages/Homepage.dart';
import 'package:chatapp/Pages/Register.dart';
import 'package:chatapp/Widget/AccentButton.dart';
import 'package:chatapp/Widget/Logo.dart';
import 'package:chatapp/Widget/TextField.dart';
import 'package:chatapp/Widget/TextNavigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatapp/Services/Auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  
  void signInWithEmailAndPassword() async{
    try{
      await AuthServices().signInWithEmailAndPassword(email: _EmailController.text , password: _PasswordController.text);
      Navigator.of(context).pop();


    }
    on FirebaseAuthException catch (e){
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Logo(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              "Helpful tip : A simple hi can bring happiness to your love ones",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
                height: 60,
              ),
          Column(
            children: [
              InputTextField(
                controller: _EmailController,
                hintText: "Abc@gmail.com",
                labelText: "Email",
              ),
              SizedBox(
                height: 20,
              ),
              InputTextField(
                  HideText: true,
                  hintText: "********",
                  labelText: "Password",
                  controller: _PasswordController),
              SizedBox(
                height: 30,
              ),
              AccentButton(
                onTap: signInWithEmailAndPassword,
                text: "Login",
                Hpadding: 60,
              ),
              SizedBox(
                height: 20,
              ),
              TextNavigation(
                  nonClickableText: "Don't have an account?",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                  },
                  ClickableText: "Register")
            ],
          )
        ],
      )),
    );
  }
}
