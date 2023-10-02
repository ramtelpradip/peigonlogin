import 'package:flutter/material.dart';
import 'package:flutterlogin/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //form key

  final _formkey= GlobalKey<FormState>();
  final firstNameEditingController = new TextEditingController();
  final secondNamedEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

//first named

    final firstNamedfield = TextFormField(
  autofocus: false,
  controller: firstNameEditingController,
  keyboardType: TextInputType.name,
  onSaved: (value) {
     firstNameEditingController.text = value!;
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.account_circle),
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: "First Name",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),

    )
  ),
);

//second named

final secondNamedfield = TextFormField(
  autofocus: false,
  controller: secondNamedEditingController,
  keyboardType: TextInputType.name,
  onSaved: (value) {
    secondNamedEditingController.text = value!;
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.account_circle),
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: "Second Name",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),

    )
  ),
);

// email

final emailfield = TextFormField(
  autofocus: false,
  controller: emailEditingController,
  keyboardType: TextInputType.emailAddress,
  onSaved: (value) {
    emailEditingController.text = value!;
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

// password

final passwordfield = TextFormField(
  autofocus: false,
  controller: passwordEditingController,
  obscureText: true,
  onSaved: (value) {
    passwordEditingController.text = value!;
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.vpn_key),
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: "password",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),

    )
  ),
);

// confirm password

final confirmpasswordfield = TextFormField(
  autofocus: false,
  controller: confirmPasswordEditingController,
  obscureText: true,
  onSaved: (value) {
    confirmPasswordEditingController.text = value!;
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.vpn_key),
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: "Confirm password",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),

    )
  ),
);

// signup button

final signUpButton = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(30),
  color: Colors.purple,
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: () {
      
    },
    child: Text("signUp",textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),),
  ),

);
return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
           icon: Icon(Icons.arrow_back,color: Colors.purple,),
           onPressed: () {
            //passing this to root 
             Navigator.of(context).pop();
           },),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color:Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 160,
                    child: Image.asset("assets/logo.jpg",
                    fit: BoxFit.contain,),
                   // fit:BoxFit.contain,
                  ),
                  SizedBox(height: 45,),
                  firstNamedfield,
                  SizedBox(height: 20,),
                  secondNamedfield,
                  SizedBox(height:20),
                  emailfield,
                  SizedBox(height: 20,),
                  passwordfield,
                  SizedBox(height: 20,),
                  confirmpasswordfield,
                  SizedBox(height: 15,),
                  signUpButton,
                  SizedBox(height: 10,)
                  
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