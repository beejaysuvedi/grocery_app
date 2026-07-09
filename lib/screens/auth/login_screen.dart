import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.arrow_back,),
          ),
          SizedBox(height: 10,),
          Center(child: Image.asset("assets/logo.png", height: 178, width: 262,)),
          SizedBox(height: 10,),
          Center(child: Text("sign In ", style: TextStyle(fontSize: 35,color: Colors.green, fontWeight: FontWeight.w700),  ), )
        ],
      ),
    );
  }
}