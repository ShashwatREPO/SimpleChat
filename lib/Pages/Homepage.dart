import 'package:chatapp/Services/Auth.dart';
import 'package:chatapp/Widget/Logo.dart';
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
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Logo(invert: true,),
            ),
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(onPressed: (){}, icon: Image.asset("lib/images/addIcon.png")),
              ),
            ],
          )
        ],
        leadingWidth: 130,
        toolbarHeight: 80,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
            
        
        ],
      ),
    );
  }
}
