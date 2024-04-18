import 'package:chatapp/Pages/Login.dart';
import 'package:chatapp/Services/Auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chatapp/Services/FirestoreServices.dart';
import 'package:chatapp/Widget/AccentButton.dart';
import 'package:chatapp/Widget/Logo.dart';
import 'package:chatapp/Widget/TextField.dart';
import 'package:chatapp/Widget/TextNavigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _UsernameController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  TextEditingController _ConfirmPasswordController = TextEditingController();


  void createUserWithEmailAndPassword() async{
    try{
      await AuthServices().createUserWithEmailAndPassword(email: _EmailController.text, password: _PasswordController.text);
      await FireStoreServices().createData(_UsernameController.text, _EmailController.text);
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
              "Helpful tip : Just a hi or a thoughtful message can brighten someone's day and let them know you're thinking of them.",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
          ),

          Column(
            children: [
              InputTextField(hintText: "username", labelText: "Username", controller: _UsernameController),
              SizedBox(height: 10,),
              InputTextField(hintText: "abc@gmail.com", labelText: "Email", controller: _EmailController),
               SizedBox(height: 10,),
              InputTextField(hintText: "********", HideText: true , labelText: "Password", controller: _PasswordController),
               SizedBox(height: 10,),
              InputTextField(hintText: "********", HideText: true , labelText: "Confirm Password", controller: _ConfirmPasswordController),
               SizedBox(height: 30,),
               AccentButton(
                onTap: (){
                  if(_ConfirmPasswordController.text == _PasswordController.text ){
                    return createUserWithEmailAndPassword();
                  }

                },
                text: "Register",
                Hpadding: 60,
              ),
              SizedBox(
                height: 20,
              ),
              TextNavigation(
                  nonClickableText: "Already have an account?",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  ClickableText: "Login")



            ],
          )
         ] ),
      ),
    );
  }
}