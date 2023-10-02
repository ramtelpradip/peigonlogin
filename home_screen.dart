import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 180,
                child: Image.asset("assets/logo.jpg",fit: BoxFit.contain,),
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Name",
              style: TextStyle(
                color: Colors.black54,fontWeight: FontWeight.w500
              ),),
              const Text("Email",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),),
              const SizedBox(
                height: 15,
              ),
              ActionChip(label: Text("Logout"),onPressed: () {
                
              },)
            ],
          ),
        ),
      ),
    );
  }
}