import 'package:chatapp/Widget/Logo.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background ,
      body: SafeArea(child: Column(
        children: [
          Logo()
        ],
      )),
    );
  }
}