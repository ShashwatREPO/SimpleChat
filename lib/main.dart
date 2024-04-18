import 'package:chatapp/Pages/Onboarding.dart';
import 'package:chatapp/Pages/PageTree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/firebase_options.dart';




Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android
    
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        scaffoldBackgroundColor: Color.fromRGBO(245, 243, 255, 1),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromRGBO(121, 100, 235, 1),
          background: Color.fromRGBO(218, 212, 255, 1),
        ),
        
      
        useMaterial3: true,
      ),
      home: PageTree(),
    );
  }
}

