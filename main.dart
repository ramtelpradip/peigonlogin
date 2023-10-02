import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlogin/screens/login_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     title: "Flutter Demo",
     theme: ThemeData(
      primarySwatch: Colors.purple,

     ),
     home: LoginScreen(),
    );
  }
}