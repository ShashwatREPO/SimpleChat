import 'package:chatapp/Services/Auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ElevatedButton(onPressed: () { AuthServices().signOut();}, child: Text("sign out"))],
      ),
    );
  }
}