import 'dart:ui';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutterlogin/screens/home_screen.dart';

import 'registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _forekey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new  TextEditingController();
  @override
  Widget build(BuildContext context) {

//email field
final emailfield = TextFormField(
  autofocus: false,
  controller: emailController,
  keyboardType: TextInputType.emailAddress,
  onSaved: (value) {
    emailController.text = value!;
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.mail),
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: "Email",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),

    )
  ),
);

// passwordfield

final passwordfield = TextFormField(
  autofocus: false,
  controller: passwordController,
  obscureText: true,
  onSaved: (value) {
    passwordController.text = value!;
  },
  textInputAction: TextInputAction.done,
   decoration: InputDecoration(
    prefixIcon: Icon(Icons.vpn_key),
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: "Password",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),

    )
  ),
);

// loginButton

final loginButton = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(30),
  color: Colors.purple,
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: () {
      Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context)=>HomeScreen(),));
      
    },
    child: Text("Login",textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),),
  ),

);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color:Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Form(
              key: _forekey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                    child: Image.asset("assets/logo.jpg",
                    fit: BoxFit.contain,),
                   // fit:BoxFit.contain,
                  ),
                  SizedBox(height: 45,),
                  emailfield,
                  SizedBox(height: 35,),
                  passwordfield,
                  SizedBox(height:35),
                  loginButton,
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?"),
                      GestureDetector(onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>RegistrationScreen(),));
                        
                      },
                      child: Text("signup",style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w800,fontSize: 18
                      ),),)
                    ],
                  )

                ],
              )
              ),
          ),
            ),
        ),
      ),
    );
  }
}